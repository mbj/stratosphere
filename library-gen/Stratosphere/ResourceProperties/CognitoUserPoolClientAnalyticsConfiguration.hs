{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolClientAnalyticsConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolClientAnalyticsConfiguration. See
-- 'cognitoUserPoolClientAnalyticsConfiguration' for a more convenient
-- constructor.
data CognitoUserPoolClientAnalyticsConfiguration =
  CognitoUserPoolClientAnalyticsConfiguration
  { _cognitoUserPoolClientAnalyticsConfigurationApplicationId :: Maybe (Val Text)
  , _cognitoUserPoolClientAnalyticsConfigurationExternalId :: Maybe (Val Text)
  , _cognitoUserPoolClientAnalyticsConfigurationRoleArn :: Maybe (Val Text)
  , _cognitoUserPoolClientAnalyticsConfigurationUserDataShared :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolClientAnalyticsConfiguration where
  toJSON CognitoUserPoolClientAnalyticsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ApplicationId",) . toJSON) _cognitoUserPoolClientAnalyticsConfigurationApplicationId
    , fmap (("ExternalId",) . toJSON) _cognitoUserPoolClientAnalyticsConfigurationExternalId
    , fmap (("RoleArn",) . toJSON) _cognitoUserPoolClientAnalyticsConfigurationRoleArn
    , fmap (("UserDataShared",) . toJSON) _cognitoUserPoolClientAnalyticsConfigurationUserDataShared
    ]

-- | Constructor for 'CognitoUserPoolClientAnalyticsConfiguration' containing
-- required fields as arguments.
cognitoUserPoolClientAnalyticsConfiguration
  :: CognitoUserPoolClientAnalyticsConfiguration
cognitoUserPoolClientAnalyticsConfiguration  =
  CognitoUserPoolClientAnalyticsConfiguration
  { _cognitoUserPoolClientAnalyticsConfigurationApplicationId = Nothing
  , _cognitoUserPoolClientAnalyticsConfigurationExternalId = Nothing
  , _cognitoUserPoolClientAnalyticsConfigurationRoleArn = Nothing
  , _cognitoUserPoolClientAnalyticsConfigurationUserDataShared = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-applicationid
cupcacApplicationId :: Lens' CognitoUserPoolClientAnalyticsConfiguration (Maybe (Val Text))
cupcacApplicationId = lens _cognitoUserPoolClientAnalyticsConfigurationApplicationId (\s a -> s { _cognitoUserPoolClientAnalyticsConfigurationApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-externalid
cupcacExternalId :: Lens' CognitoUserPoolClientAnalyticsConfiguration (Maybe (Val Text))
cupcacExternalId = lens _cognitoUserPoolClientAnalyticsConfigurationExternalId (\s a -> s { _cognitoUserPoolClientAnalyticsConfigurationExternalId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-rolearn
cupcacRoleArn :: Lens' CognitoUserPoolClientAnalyticsConfiguration (Maybe (Val Text))
cupcacRoleArn = lens _cognitoUserPoolClientAnalyticsConfigurationRoleArn (\s a -> s { _cognitoUserPoolClientAnalyticsConfigurationRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-userdatashared
cupcacUserDataShared :: Lens' CognitoUserPoolClientAnalyticsConfiguration (Maybe (Val Bool))
cupcacUserDataShared = lens _cognitoUserPoolClientAnalyticsConfigurationUserDataShared (\s a -> s { _cognitoUserPoolClientAnalyticsConfigurationUserDataShared = a })
