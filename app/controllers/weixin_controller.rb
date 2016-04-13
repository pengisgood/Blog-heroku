class WeixinController < ApplicationController
  def checkSignature
    signature = params['signature']
    timestamp = params['timestamp']
    nonce = params['nonce']

    token = '12a3ca455f19ce7e2e358b17'

    require 'digest/sha1'
    sha1 = Digest::SHA1.hexdigest Array(token, timestamp, nonce).sort!.join

    if sha1 == signature
      render json: params['echostr']
    end

    render status: 403
  end
end