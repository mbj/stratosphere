{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksStackChefConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksStackChefConfiguration. See
-- 'opsWorksStackChefConfiguration' for a more convenient constructor.
data OpsWorksStackChefConfiguration =
  OpsWorksStackChefConfiguration
  { _opsWorksStackChefConfigurationBerkshelfVersion :: Maybe (Val Text)
  , _opsWorksStackChefConfigurationManageBerkshelf :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON OpsWorksStackChefConfiguration where
  toJSON OpsWorksStackChefConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BerkshelfVersion",) . toJSON) _opsWorksStackChefConfigurationBerkshelfVersion
    , fmap (("ManageBerkshelf",) . toJSON . fmap Bool') _opsWorksStackChefConfigurationManageBerkshelf
    ]

instance FromJSON OpsWorksStackChefConfiguration where
  parseJSON (Object obj) =
    OpsWorksStackChefConfiguration <$>
      (obj .:? "BerkshelfVersion") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ManageBerkshelf")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksStackChefConfiguration' containing required
-- fields as arguments.
opsWorksStackChefConfiguration
  :: OpsWorksStackChefConfiguration
opsWorksStackChefConfiguration  =
  OpsWorksStackChefConfiguration
  { _opsWorksStackChefConfigurationBerkshelfVersion = Nothing
  , _opsWorksStackChefConfigurationManageBerkshelf = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
owsccBerkshelfVersion :: Lens' OpsWorksStackChefConfiguration (Maybe (Val Text))
owsccBerkshelfVersion = lens _opsWorksStackChefConfigurationBerkshelfVersion (\s a -> s { _opsWorksStackChefConfigurationBerkshelfVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
owsccManageBerkshelf :: Lens' OpsWorksStackChefConfiguration (Maybe (Val Bool))
owsccManageBerkshelf = lens _opsWorksStackChefConfigurationManageBerkshelf (\s a -> s { _opsWorksStackChefConfigurationManageBerkshelf = a })
