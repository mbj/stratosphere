
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html

module Stratosphere.ResourceProperties.ApiGatewayDocumentationPartLocation where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayDocumentationPartLocation. See
-- 'apiGatewayDocumentationPartLocation' for a more convenient constructor.
data ApiGatewayDocumentationPartLocation =
  ApiGatewayDocumentationPartLocation
  { _apiGatewayDocumentationPartLocationMethod :: Maybe (Val Text)
  , _apiGatewayDocumentationPartLocationName :: Maybe (Val Text)
  , _apiGatewayDocumentationPartLocationPath :: Maybe (Val Text)
  , _apiGatewayDocumentationPartLocationStatusCode :: Maybe (Val Text)
  , _apiGatewayDocumentationPartLocationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDocumentationPartLocation where
  toJSON ApiGatewayDocumentationPartLocation{..} =
    object $
    catMaybes
    [ fmap (("Method",) . toJSON) _apiGatewayDocumentationPartLocationMethod
    , fmap (("Name",) . toJSON) _apiGatewayDocumentationPartLocationName
    , fmap (("Path",) . toJSON) _apiGatewayDocumentationPartLocationPath
    , fmap (("StatusCode",) . toJSON) _apiGatewayDocumentationPartLocationStatusCode
    , fmap (("Type",) . toJSON) _apiGatewayDocumentationPartLocationType
    ]

-- | Constructor for 'ApiGatewayDocumentationPartLocation' containing required
-- fields as arguments.
apiGatewayDocumentationPartLocation
  :: ApiGatewayDocumentationPartLocation
apiGatewayDocumentationPartLocation  =
  ApiGatewayDocumentationPartLocation
  { _apiGatewayDocumentationPartLocationMethod = Nothing
  , _apiGatewayDocumentationPartLocationName = Nothing
  , _apiGatewayDocumentationPartLocationPath = Nothing
  , _apiGatewayDocumentationPartLocationStatusCode = Nothing
  , _apiGatewayDocumentationPartLocationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-method
agdplMethod :: Lens' ApiGatewayDocumentationPartLocation (Maybe (Val Text))
agdplMethod = lens _apiGatewayDocumentationPartLocationMethod (\s a -> s { _apiGatewayDocumentationPartLocationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-name
agdplName :: Lens' ApiGatewayDocumentationPartLocation (Maybe (Val Text))
agdplName = lens _apiGatewayDocumentationPartLocationName (\s a -> s { _apiGatewayDocumentationPartLocationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-path
agdplPath :: Lens' ApiGatewayDocumentationPartLocation (Maybe (Val Text))
agdplPath = lens _apiGatewayDocumentationPartLocationPath (\s a -> s { _apiGatewayDocumentationPartLocationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-statuscode
agdplStatusCode :: Lens' ApiGatewayDocumentationPartLocation (Maybe (Val Text))
agdplStatusCode = lens _apiGatewayDocumentationPartLocationStatusCode (\s a -> s { _apiGatewayDocumentationPartLocationStatusCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-type
agdplType :: Lens' ApiGatewayDocumentationPartLocation (Maybe (Val Text))
agdplType = lens _apiGatewayDocumentationPartLocationType (\s a -> s { _apiGatewayDocumentationPartLocationType = a })
