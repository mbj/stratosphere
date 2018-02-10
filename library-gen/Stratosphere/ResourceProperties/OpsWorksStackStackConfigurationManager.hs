{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html

module Stratosphere.ResourceProperties.OpsWorksStackStackConfigurationManager where

import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksStackStackConfigurationManager. See
-- 'opsWorksStackStackConfigurationManager' for a more convenient
-- constructor.
data OpsWorksStackStackConfigurationManager =
  OpsWorksStackStackConfigurationManager
  { _opsWorksStackStackConfigurationManagerName :: Maybe (Val Text)
  , _opsWorksStackStackConfigurationManagerVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksStackStackConfigurationManager where
  toJSON OpsWorksStackStackConfigurationManager{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _opsWorksStackStackConfigurationManagerName
    , fmap (("Version",) . toJSON) _opsWorksStackStackConfigurationManagerVersion
    ]

instance FromJSON OpsWorksStackStackConfigurationManager where
  parseJSON (Object obj) =
    OpsWorksStackStackConfigurationManager <$>
      (obj .:? "Name") <*>
      (obj .:? "Version")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksStackStackConfigurationManager' containing
-- required fields as arguments.
opsWorksStackStackConfigurationManager
  :: OpsWorksStackStackConfigurationManager
opsWorksStackStackConfigurationManager  =
  OpsWorksStackStackConfigurationManager
  { _opsWorksStackStackConfigurationManagerName = Nothing
  , _opsWorksStackStackConfigurationManagerVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-name
owsscmName :: Lens' OpsWorksStackStackConfigurationManager (Maybe (Val Text))
owsscmName = lens _opsWorksStackStackConfigurationManagerName (\s a -> s { _opsWorksStackStackConfigurationManagerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-version
owsscmVersion :: Lens' OpsWorksStackStackConfigurationManager (Maybe (Val Text))
owsscmVersion = lens _opsWorksStackStackConfigurationManagerVersion (\s a -> s { _opsWorksStackStackConfigurationManagerVersion = a })
