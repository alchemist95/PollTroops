Rails.application.config.middleware.use OmniAuth::Builder do 
 provider :facebook, '209752066044836', '6d16f27a91850c2ea05b186db003d321'
end