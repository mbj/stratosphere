{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html

module Stratosphere.Resources.IoTAuthorizer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAuthorizerTags

-- | Full data type definition for IoTAuthorizer. See 'ioTAuthorizer' for a
-- more convenient constructor.
data IoTAuthorizer =
  IoTAuthorizer
  { _ioTAuthorizerAuthorizerFunctionArn :: Val Text
  , _ioTAuthorizerAuthorizerName :: Maybe (Val Text)
  , _ioTAuthorizerSigningDisabled :: Maybe (Val Bool)
  , _ioTAuthorizerStatus :: Maybe (Val Text)
  , _ioTAuthorizerTags :: Maybe IoTAuthorizerTags
  , _ioTAuthorizerTokenKeyName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IoTAuthorizer where
  toResourceProperties IoTAuthorizer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::Authorizer"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("AuthorizerFunctionArn",) . toJSON) _ioTAuthorizerAuthorizerFunctionArn
        , fmap (("AuthorizerName",) . toJSON) _ioTAuthorizerAuthorizerName
        , fmap (("SigningDisabled",) . toJSON) _ioTAuthorizerSigningDisabled
        , fmap (("Status",) . toJSON) _ioTAuthorizerStatus
        , fmap (("Tags",) . toJSON) _ioTAuthorizerTags
        , fmap (("TokenKeyName",) . toJSON) _ioTAuthorizerTokenKeyName
        ]
    }

-- | Constructor for 'IoTAuthorizer' containing required fields as arguments.
ioTAuthorizer
  :: Val Text -- ^ 'itaAuthorizerFunctionArn'
  -> IoTAuthorizer
ioTAuthorizer authorizerFunctionArnarg =
  IoTAuthorizer
  { _ioTAuthorizerAuthorizerFunctionArn = authorizerFunctionArnarg
  , _ioTAuthorizerAuthorizerName = Nothing
  , _ioTAuthorizerSigningDisabled = Nothing
  , _ioTAuthorizerStatus = Nothing
  , _ioTAuthorizerTags = Nothing
  , _ioTAuthorizerTokenKeyName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-authorizerfunctionarn
itaAuthorizerFunctionArn :: Lens' IoTAuthorizer (Val Text)
itaAuthorizerFunctionArn = lens _ioTAuthorizerAuthorizerFunctionArn (\s a -> s { _ioTAuthorizerAuthorizerFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-authorizername
itaAuthorizerName :: Lens' IoTAuthorizer (Maybe (Val Text))
itaAuthorizerName = lens _ioTAuthorizerAuthorizerName (\s a -> s { _ioTAuthorizerAuthorizerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-signingdisabled
itaSigningDisabled :: Lens' IoTAuthorizer (Maybe (Val Bool))
itaSigningDisabled = lens _ioTAuthorizerSigningDisabled (\s a -> s { _ioTAuthorizerSigningDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-status
itaStatus :: Lens' IoTAuthorizer (Maybe (Val Text))
itaStatus = lens _ioTAuthorizerStatus (\s a -> s { _ioTAuthorizerStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-tags
itaTags :: Lens' IoTAuthorizer (Maybe IoTAuthorizerTags)
itaTags = lens _ioTAuthorizerTags (\s a -> s { _ioTAuthorizerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-authorizer.html#cfn-iot-authorizer-tokenkeyname
itaTokenKeyName :: Lens' IoTAuthorizer (Maybe (Val Text))
itaTokenKeyName = lens _ioTAuthorizerTokenKeyName (\s a -> s { _ioTAuthorizerTokenKeyName = a })
