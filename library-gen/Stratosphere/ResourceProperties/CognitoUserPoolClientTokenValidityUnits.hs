
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html

module Stratosphere.ResourceProperties.CognitoUserPoolClientTokenValidityUnits where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolClientTokenValidityUnits.
-- See 'cognitoUserPoolClientTokenValidityUnits' for a more convenient
-- constructor.
data CognitoUserPoolClientTokenValidityUnits =
  CognitoUserPoolClientTokenValidityUnits
  { _cognitoUserPoolClientTokenValidityUnitsAccessToken :: Maybe (Val Text)
  , _cognitoUserPoolClientTokenValidityUnitsIdToken :: Maybe (Val Text)
  , _cognitoUserPoolClientTokenValidityUnitsRefreshToken :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolClientTokenValidityUnits where
  toJSON CognitoUserPoolClientTokenValidityUnits{..} =
    object $
    catMaybes
    [ fmap (("AccessToken",) . toJSON) _cognitoUserPoolClientTokenValidityUnitsAccessToken
    , fmap (("IdToken",) . toJSON) _cognitoUserPoolClientTokenValidityUnitsIdToken
    , fmap (("RefreshToken",) . toJSON) _cognitoUserPoolClientTokenValidityUnitsRefreshToken
    ]

-- | Constructor for 'CognitoUserPoolClientTokenValidityUnits' containing
-- required fields as arguments.
cognitoUserPoolClientTokenValidityUnits
  :: CognitoUserPoolClientTokenValidityUnits
cognitoUserPoolClientTokenValidityUnits  =
  CognitoUserPoolClientTokenValidityUnits
  { _cognitoUserPoolClientTokenValidityUnitsAccessToken = Nothing
  , _cognitoUserPoolClientTokenValidityUnitsIdToken = Nothing
  , _cognitoUserPoolClientTokenValidityUnitsRefreshToken = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-accesstoken
cupctvuAccessToken :: Lens' CognitoUserPoolClientTokenValidityUnits (Maybe (Val Text))
cupctvuAccessToken = lens _cognitoUserPoolClientTokenValidityUnitsAccessToken (\s a -> s { _cognitoUserPoolClientTokenValidityUnitsAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-idtoken
cupctvuIdToken :: Lens' CognitoUserPoolClientTokenValidityUnits (Maybe (Val Text))
cupctvuIdToken = lens _cognitoUserPoolClientTokenValidityUnitsIdToken (\s a -> s { _cognitoUserPoolClientTokenValidityUnitsIdToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-tokenvalidityunits.html#cfn-cognito-userpoolclient-tokenvalidityunits-refreshtoken
cupctvuRefreshToken :: Lens' CognitoUserPoolClientTokenValidityUnits (Maybe (Val Text))
cupctvuRefreshToken = lens _cognitoUserPoolClientTokenValidityUnitsRefreshToken (\s a -> s { _cognitoUserPoolClientTokenValidityUnitsRefreshToken = a })
