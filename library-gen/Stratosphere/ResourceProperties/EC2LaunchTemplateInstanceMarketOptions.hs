
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateInstanceMarketOptions where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateSpotOptions

-- | Full data type definition for EC2LaunchTemplateInstanceMarketOptions. See
-- 'ec2LaunchTemplateInstanceMarketOptions' for a more convenient
-- constructor.
data EC2LaunchTemplateInstanceMarketOptions =
  EC2LaunchTemplateInstanceMarketOptions
  { _eC2LaunchTemplateInstanceMarketOptionsMarketType :: Maybe (Val Text)
  , _eC2LaunchTemplateInstanceMarketOptionsSpotOptions :: Maybe EC2LaunchTemplateSpotOptions
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateInstanceMarketOptions where
  toJSON EC2LaunchTemplateInstanceMarketOptions{..} =
    object $
    catMaybes
    [ fmap (("MarketType",) . toJSON) _eC2LaunchTemplateInstanceMarketOptionsMarketType
    , fmap (("SpotOptions",) . toJSON) _eC2LaunchTemplateInstanceMarketOptionsSpotOptions
    ]

-- | Constructor for 'EC2LaunchTemplateInstanceMarketOptions' containing
-- required fields as arguments.
ec2LaunchTemplateInstanceMarketOptions
  :: EC2LaunchTemplateInstanceMarketOptions
ec2LaunchTemplateInstanceMarketOptions  =
  EC2LaunchTemplateInstanceMarketOptions
  { _eC2LaunchTemplateInstanceMarketOptionsMarketType = Nothing
  , _eC2LaunchTemplateInstanceMarketOptionsSpotOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-markettype
ecltimoMarketType :: Lens' EC2LaunchTemplateInstanceMarketOptions (Maybe (Val Text))
ecltimoMarketType = lens _eC2LaunchTemplateInstanceMarketOptionsMarketType (\s a -> s { _eC2LaunchTemplateInstanceMarketOptionsMarketType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions
ecltimoSpotOptions :: Lens' EC2LaunchTemplateInstanceMarketOptions (Maybe EC2LaunchTemplateSpotOptions)
ecltimoSpotOptions = lens _eC2LaunchTemplateInstanceMarketOptionsSpotOptions (\s a -> s { _eC2LaunchTemplateInstanceMarketOptionsSpotOptions = a })
