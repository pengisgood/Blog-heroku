class WeixinController < ApplicationController
  def check_signature
    signature = params['signature']
    timestamp = params['timestamp']
    nonce = params['nonce']

    token = '12a3ca455f19ce7e2e358b17'

    require 'digest/sha1'
    sha1 = Digest::SHA1.hexdigest [token, timestamp, nonce].sort!.join

    if sha1 == signature
      render json: params['echostr']
    else
      render json: nil
    end
  end
end