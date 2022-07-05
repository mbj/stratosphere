{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html

module Stratosphere.Resources.ApiGatewayRestApi where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location
import Stratosphere.ResourceProperties.ApiGatewayRestApiEndpointConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApiGatewayRestApi. See 'apiGatewayRestApi'
-- for a more convenient constructor.
data ApiGatewayRestApi =
  ApiGatewayRestApi
  { _apiGatewayRestApiApiKeySourceType :: Maybe (Val Text)
  , _apiGatewayRestApiBinaryMediaTypes :: Maybe (ValList Text)
  , _apiGatewayRestApiBody :: Maybe Object
  , _apiGatewayRestApiBodyS3Location :: Maybe ApiGatewayRestApiS3Location
  , _apiGatewayRestApiCloneFrom :: Maybe (Val Text)
  , _apiGatewayRestApiDescription :: Maybe (Val Text)
  , _apiGatewayRestApiEndpointConfiguration :: Maybe ApiGatewayRestApiEndpointConfiguration
  , _apiGatewayRestApiFailOnWarnings :: Maybe (Val Bool)
  , _apiGatewayRestApiMinimumCompressionSize :: Maybe (Val Integer)
  , _apiGatewayRestApiName :: Maybe (Val Text)
  , _apiGatewayRestApiParameters :: Maybe Object
  , _apiGatewayRestApiPolicy :: Maybe Object
  , _apiGatewayRestApiTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayRestApi where
  toResourceProperties ApiGatewayRestApi{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::RestApi"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApiKeySourceType",) . toJSON) _apiGatewayRestApiApiKeySourceType
        , fmap (("BinaryMediaTypes",) . toJSON) _apiGatewayRestApiBinaryMediaTypes
        , fmap (("Body",) . toJSON) _apiGatewayRestApiBody
        , fmap (("BodyS3Location",) . toJSON) _apiGatewayRestApiBodyS3Location
        , fmap (("CloneFrom",) . toJSON) _apiGatewayRestApiCloneFrom
        , fmap (("Description",) . toJSON) _apiGatewayRestApiDescription
        , fmap (("EndpointConfiguration",) . toJSON) _apiGatewayRestApiEndpointConfiguration
        , fmap (("FailOnWarnings",) . toJSON) _apiGatewayRestApiFailOnWarnings
        , fmap (("MinimumCompressionSize",) . toJSON) _apiGatewayRestApiMinimumCompressionSize
        , fmap (("Name",) . toJSON) _apiGatewayRestApiName
        , fmap (("Parameters",) . toJSON) _apiGatewayRestApiParameters
        , fmap (("Policy",) . toJSON) _apiGatewayRestApiPolicy
        , fmap (("Tags",) . toJSON) _apiGatewayRestApiTags
        ]
    }

-- | Constructor for 'ApiGatewayRestApi' containing required fields as
-- arguments.
apiGatewayRestApi
  :: ApiGatewayRestApi
apiGatewayRestApi  =
  ApiGatewayRestApi
  { _apiGatewayRestApiApiKeySourceType = Nothing
  , _apiGatewayRestApiBinaryMediaTypes = Nothing
  , _apiGatewayRestApiBody = Nothing
  , _apiGatewayRestApiBodyS3Location = Nothing
  , _apiGatewayRestApiCloneFrom = Nothing
  , _apiGatewayRestApiDescription = Nothing
  , _apiGatewayRestApiEndpointConfiguration = Nothing
  , _apiGatewayRestApiFailOnWarnings = Nothing
  , _apiGatewayRestApiMinimumCompressionSize = Nothing
  , _apiGatewayRestApiName = Nothing
  , _apiGatewayRestApiParameters = Nothing
  , _apiGatewayRestApiPolicy = Nothing
  , _apiGatewayRestApiTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-apikeysourcetype
agraApiKeySourceType :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraApiKeySourceType = lens _apiGatewayRestApiApiKeySourceType (\s a -> s { _apiGatewayRestApiApiKeySourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-binarymediatypes
agraBinaryMediaTypes :: Lens' ApiGatewayRestApi (Maybe (ValList Text))
agraBinaryMediaTypes = lens _apiGatewayRestApiBinaryMediaTypes (\s a -> s { _apiGatewayRestApiBinaryMediaTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-body
agraBody :: Lens' ApiGatewayRestApi (Maybe Object)
agraBody = lens _apiGatewayRestApiBody (\s a -> s { _apiGatewayRestApiBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-bodys3location
agraBodyS3Location :: Lens' ApiGatewayRestApi (Maybe ApiGatewayRestApiS3Location)
agraBodyS3Location = lens _apiGatewayRestApiBodyS3Location (\s a -> s { _apiGatewayRestApiBodyS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-clonefrom
agraCloneFrom :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraCloneFrom = lens _apiGatewayRestApiCloneFrom (\s a -> s { _apiGatewayRestApiCloneFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-description
agraDescription :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraDescription = lens _apiGatewayRestApiDescription (\s a -> s { _apiGatewayRestApiDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-endpointconfiguration
agraEndpointConfiguration :: Lens' ApiGatewayRestApi (Maybe ApiGatewayRestApiEndpointConfiguration)
agraEndpointConfiguration = lens _apiGatewayRestApiEndpointConfiguration (\s a -> s { _apiGatewayRestApiEndpointConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-failonwarnings
agraFailOnWarnings :: Lens' ApiGatewayRestApi (Maybe (Val Bool))
agraFailOnWarnings = lens _apiGatewayRestApiFailOnWarnings (\s a -> s { _apiGatewayRestApiFailOnWarnings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-minimumcompressionsize
agraMinimumCompressionSize :: Lens' ApiGatewayRestApi (Maybe (Val Integer))
agraMinimumCompressionSize = lens _apiGatewayRestApiMinimumCompressionSize (\s a -> s { _apiGatewayRestApiMinimumCompressionSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-name
agraName :: Lens' ApiGatewayRestApi (Maybe (Val Text))
agraName = lens _apiGatewayRestApiName (\s a -> s { _apiGatewayRestApiName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-parameters
agraParameters :: Lens' ApiGatewayRestApi (Maybe Object)
agraParameters = lens _apiGatewayRestApiParameters (\s a -> s { _apiGatewayRestApiParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-policy
agraPolicy :: Lens' ApiGatewayRestApi (Maybe Object)
agraPolicy = lens _apiGatewayRestApiPolicy (\s a -> s { _apiGatewayRestApiPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-tags
agraTags :: Lens' ApiGatewayRestApi (Maybe [Tag])
agraTags = lens _apiGatewayRestApiTags (\s a -> s { _apiGatewayRestApiTags = a })
