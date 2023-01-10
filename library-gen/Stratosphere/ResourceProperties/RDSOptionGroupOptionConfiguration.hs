
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html

module Stratosphere.ResourceProperties.RDSOptionGroupOptionConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting

-- | Full data type definition for RDSOptionGroupOptionConfiguration. See
-- 'rdsOptionGroupOptionConfiguration' for a more convenient constructor.
data RDSOptionGroupOptionConfiguration =
  RDSOptionGroupOptionConfiguration
  { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships :: Maybe (ValList Text)
  , _rDSOptionGroupOptionConfigurationOptionName :: Val Text
  , _rDSOptionGroupOptionConfigurationOptionSettings :: Maybe [RDSOptionGroupOptionSetting]
  , _rDSOptionGroupOptionConfigurationOptionVersion :: Maybe (Val Text)
  , _rDSOptionGroupOptionConfigurationPort :: Maybe (Val Integer)
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON RDSOptionGroupOptionConfiguration where
  toJSON RDSOptionGroupOptionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("DBSecurityGroupMemberships",) . toJSON) _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships
    , (Just . ("OptionName",) . toJSON) _rDSOptionGroupOptionConfigurationOptionName
    , fmap (("OptionSettings",) . toJSON) _rDSOptionGroupOptionConfigurationOptionSettings
    , fmap (("OptionVersion",) . toJSON) _rDSOptionGroupOptionConfigurationOptionVersion
    , fmap (("Port",) . toJSON) _rDSOptionGroupOptionConfigurationPort
    , fmap (("VpcSecurityGroupMemberships",) . toJSON) _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships
    ]

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
  , _rDSOptionGroupOptionConfigurationOptionVersion = Nothing
  , _rDSOptionGroupOptionConfigurationPort = Nothing
  , _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-dbsecuritygroupmemberships
rdsogocDBSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe (ValList Text))
rdsogocDBSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationDBSecurityGroupMemberships = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionname
rdsogocOptionName :: Lens' RDSOptionGroupOptionConfiguration (Val Text)
rdsogocOptionName = lens _rDSOptionGroupOptionConfigurationOptionName (\s a -> s { _rDSOptionGroupOptionConfigurationOptionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionsettings
rdsogocOptionSettings :: Lens' RDSOptionGroupOptionConfiguration (Maybe [RDSOptionGroupOptionSetting])
rdsogocOptionSettings = lens _rDSOptionGroupOptionConfigurationOptionSettings (\s a -> s { _rDSOptionGroupOptionConfigurationOptionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfiguration-optionversion
rdsogocOptionVersion :: Lens' RDSOptionGroupOptionConfiguration (Maybe (Val Text))
rdsogocOptionVersion = lens _rDSOptionGroupOptionConfigurationOptionVersion (\s a -> s { _rDSOptionGroupOptionConfigurationOptionVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-port
rdsogocPort :: Lens' RDSOptionGroupOptionConfiguration (Maybe (Val Integer))
rdsogocPort = lens _rDSOptionGroupOptionConfigurationPort (\s a -> s { _rDSOptionGroupOptionConfigurationPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-vpcsecuritygroupmemberships
rdsogocVpcSecurityGroupMemberships :: Lens' RDSOptionGroupOptionConfiguration (Maybe (ValList Text))
rdsogocVpcSecurityGroupMemberships = lens _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships (\s a -> s { _rDSOptionGroupOptionConfigurationVpcSecurityGroupMemberships = a })
