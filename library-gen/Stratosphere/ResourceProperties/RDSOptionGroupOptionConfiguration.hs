{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting

-- | Full data type definition for RDSOptionGroupOptionConfiguration. See
-- 'rdsOptionGroupOptionConfiguration' for a more convenient constructor.
data RDSOptionGroupOptionConfiguration =
  RDSOptionGroupOptionConfiguration
  { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships :: Maybe [Val Text]
  , _rDSOptionGroupOptionConfigurationOptionName :: Val Text
  , _rDSOptionGroupOptionConfigurationOptionSettings :: Maybe RDSOptionGroupOptionSetting
  , _rDSOptionGroupOptionConfigurationPort :: Maybe (Val Integer')
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON RDSOptionGroupOptionConfiguration where
  toJSON RDSOptionGroupOptionConfiguration{..} =
    object $
    catMaybes
    [ ("DBSecurityGroupMemberships" .=) <$> _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships
    , Just ("OptionName" .= _rDSOptionGroupOptionConfigurationOptionName)
    , ("OptionSettings" .=) <$> _rDSOptionGroupOptionConfigurationOptionSettings
    , ("Port" .=) <$> _rDSOptionGroupOptionConfigurationPort
    , ("VpcSecurityGroupMemberships" .=) <$> _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships
    ]

instance FromJSON RDSOptionGroupOptionConfiguration where
  parseJSON (Object obj) =
    RDSOptionGroupOptionConfiguration <$>
      obj .:? "DBSecurityGroupMemberships" <*>
      obj .: "OptionName" <*>
      obj .:? "OptionSettings" <*>
      obj .:? "Port" <*>
      obj .:? "VpcSecurityGroupMemberships"
  parseJSON _ = mempty

-- | Constructor for 'RDSOptionGroupOptionConfiguration' containing required
-- fields as arguments.
rdsOptionGroupOptionConfiguration
  :: Val Text -- ^ 'rdsogocOptionName'
  -> RDSOptionGroupOptionConfiguration
rdsOptionGroupOptionConfiguration optionNamearg =
  RDSOptionGroupOptionConfiguration
  { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships = Nothing
  , _rDSOptionGroupOptionConfigurationOptionName = optionNamearg
  , _rDSOptionGroupOptionConfigurationOptionSettings = Nothing
  , _rDSOptionGroupOptionConfigurationPort = Nothing
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-dbsecuritygroupmemberships
rdsogocDBSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe [Val Text])
rdsogocDBSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionname
rdsogocOptionName :: Lens' RDSOptionGroupOptionConfiguration (Val Text)
rdsogocOptionName = lens _rDSOptionGroupOptionConfigurationOptionName (\s a -> s { _rDSOptionGroupOptionConfigurationOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionsettings
rdsogocOptionSettings :: Lens' RDSOptionGroupOptionConfiguration (Maybe RDSOptionGroupOptionSetting)
rdsogocOptionSettings = lens _rDSOptionGroupOptionConfigurationOptionSettings (\s a -> s { _rDSOptionGroupOptionConfigurationOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-port
rdsogocPort :: Lens' RDSOptionGroupOptionConfiguration (Maybe (Val Integer'))
rdsogocPort = lens _rDSOptionGroupOptionConfigurationPort (\s a -> s { _rDSOptionGroupOptionConfigurationPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-vpcsecuritygroupmemberships
rdsogocVpcSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe [Val Text])
rdsogocVpcSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = a })
