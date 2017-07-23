{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html

module Stratosphere.Resources.EMRSecurityConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRSecurityConfiguration. See
-- 'emrSecurityConfiguration' for a more convenient constructor.
data EMRSecurityConfiguration =
  EMRSecurityConfiguration
  { _eMRSecurityConfigurationName :: Maybe (Val Text)
  , _eMRSecurityConfigurationSecurityConfiguration :: Object
  } deriving (Show, Eq)

instance ToJSON EMRSecurityConfiguration where
  toJSON EMRSecurityConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _eMRSecurityConfigurationName
    , (Just . ("SecurityConfiguration",) . toJSON) _eMRSecurityConfigurationSecurityConfiguration
    ]

instance FromJSON EMRSecurityConfiguration where
  parseJSON (Object obj) =
    EMRSecurityConfiguration <$>
      (obj .:? "Name") <*>
      (obj .: "SecurityConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'EMRSecurityConfiguration' containing required fields as
-- arguments.
emrSecurityConfiguration
  :: Object -- ^ 'emrscSecurityConfiguration'
  -> EMRSecurityConfiguration
emrSecurityConfiguration securityConfigurationarg =
  EMRSecurityConfiguration
  { _eMRSecurityConfigurationName = Nothing
  , _eMRSecurityConfigurationSecurityConfiguration = securityConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-name
emrscName :: Lens' EMRSecurityConfiguration (Maybe (Val Text))
emrscName = lens _eMRSecurityConfigurationName (\s a -> s { _eMRSecurityConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-securityconfiguration
emrscSecurityConfiguration :: Lens' EMRSecurityConfiguration Object
emrscSecurityConfiguration = lens _eMRSecurityConfigurationSecurityConfiguration (\s a -> s { _eMRSecurityConfigurationSecurityConfiguration = a })
