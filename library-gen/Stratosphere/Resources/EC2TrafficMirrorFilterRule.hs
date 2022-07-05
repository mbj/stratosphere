{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html

module Stratosphere.Resources.EC2TrafficMirrorFilterRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2TrafficMirrorFilterRuleTrafficMirrorPortRange

-- | Full data type definition for EC2TrafficMirrorFilterRule. See
-- 'ec2TrafficMirrorFilterRule' for a more convenient constructor.
data EC2TrafficMirrorFilterRule =
  EC2TrafficMirrorFilterRule
  { _eC2TrafficMirrorFilterRuleDescription :: Maybe (Val Text)
  , _eC2TrafficMirrorFilterRuleDestinationCidrBlock :: Val Text
  , _eC2TrafficMirrorFilterRuleDestinationPortRange :: Maybe EC2TrafficMirrorFilterRuleTrafficMirrorPortRange
  , _eC2TrafficMirrorFilterRuleProtocol :: Maybe (Val Integer)
  , _eC2TrafficMirrorFilterRuleRuleAction :: Val Text
  , _eC2TrafficMirrorFilterRuleRuleNumber :: Val Integer
  , _eC2TrafficMirrorFilterRuleSourceCidrBlock :: Val Text
  , _eC2TrafficMirrorFilterRuleSourcePortRange :: Maybe EC2TrafficMirrorFilterRuleTrafficMirrorPortRange
  , _eC2TrafficMirrorFilterRuleTrafficDirection :: Val Text
  , _eC2TrafficMirrorFilterRuleTrafficMirrorFilterId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TrafficMirrorFilterRule where
  toResourceProperties EC2TrafficMirrorFilterRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TrafficMirrorFilterRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eC2TrafficMirrorFilterRuleDescription
        , (Just . ("DestinationCidrBlock",) . toJSON) _eC2TrafficMirrorFilterRuleDestinationCidrBlock
        , fmap (("DestinationPortRange",) . toJSON) _eC2TrafficMirrorFilterRuleDestinationPortRange
        , fmap (("Protocol",) . toJSON) _eC2TrafficMirrorFilterRuleProtocol
        , (Just . ("RuleAction",) . toJSON) _eC2TrafficMirrorFilterRuleRuleAction
        , (Just . ("RuleNumber",) . toJSON) _eC2TrafficMirrorFilterRuleRuleNumber
        , (Just . ("SourceCidrBlock",) . toJSON) _eC2TrafficMirrorFilterRuleSourceCidrBlock
        , fmap (("SourcePortRange",) . toJSON) _eC2TrafficMirrorFilterRuleSourcePortRange
        , (Just . ("TrafficDirection",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficDirection
        , (Just . ("TrafficMirrorFilterId",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficMirrorFilterId
        ]
    }

-- | Constructor for 'EC2TrafficMirrorFilterRule' containing required fields
-- as arguments.
ec2TrafficMirrorFilterRule
  :: Val Text -- ^ 'ectmfrDestinationCidrBlock'
  -> Val Text -- ^ 'ectmfrRuleAction'
  -> Val Integer -- ^ 'ectmfrRuleNumber'
  -> Val Text -- ^ 'ectmfrSourceCidrBlock'
  -> Val Text -- ^ 'ectmfrTrafficDirection'
  -> Val Text -- ^ 'ectmfrTrafficMirrorFilterId'
  -> EC2TrafficMirrorFilterRule
ec2TrafficMirrorFilterRule destinationCidrBlockarg ruleActionarg ruleNumberarg sourceCidrBlockarg trafficDirectionarg trafficMirrorFilterIdarg =
  EC2TrafficMirrorFilterRule
  { _eC2TrafficMirrorFilterRuleDescription = Nothing
  , _eC2TrafficMirrorFilterRuleDestinationCidrBlock = destinationCidrBlockarg
  , _eC2TrafficMirrorFilterRuleDestinationPortRange = Nothing
  , _eC2TrafficMirrorFilterRuleProtocol = Nothing
  , _eC2TrafficMirrorFilterRuleRuleAction = ruleActionarg
  , _eC2TrafficMirrorFilterRuleRuleNumber = ruleNumberarg
  , _eC2TrafficMirrorFilterRuleSourceCidrBlock = sourceCidrBlockarg
  , _eC2TrafficMirrorFilterRuleSourcePortRange = Nothing
  , _eC2TrafficMirrorFilterRuleTrafficDirection = trafficDirectionarg
  , _eC2TrafficMirrorFilterRuleTrafficMirrorFilterId = trafficMirrorFilterIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-description
ectmfrDescription :: Lens' EC2TrafficMirrorFilterRule (Maybe (Val Text))
ectmfrDescription = lens _eC2TrafficMirrorFilterRuleDescription (\s a -> s { _eC2TrafficMirrorFilterRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationcidrblock
ectmfrDestinationCidrBlock :: Lens' EC2TrafficMirrorFilterRule (Val Text)
ectmfrDestinationCidrBlock = lens _eC2TrafficMirrorFilterRuleDestinationCidrBlock (\s a -> s { _eC2TrafficMirrorFilterRuleDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationportrange
ectmfrDestinationPortRange :: Lens' EC2TrafficMirrorFilterRule (Maybe EC2TrafficMirrorFilterRuleTrafficMirrorPortRange)
ectmfrDestinationPortRange = lens _eC2TrafficMirrorFilterRuleDestinationPortRange (\s a -> s { _eC2TrafficMirrorFilterRuleDestinationPortRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-protocol
ectmfrProtocol :: Lens' EC2TrafficMirrorFilterRule (Maybe (Val Integer))
ectmfrProtocol = lens _eC2TrafficMirrorFilterRuleProtocol (\s a -> s { _eC2TrafficMirrorFilterRuleProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-ruleaction
ectmfrRuleAction :: Lens' EC2TrafficMirrorFilterRule (Val Text)
ectmfrRuleAction = lens _eC2TrafficMirrorFilterRuleRuleAction (\s a -> s { _eC2TrafficMirrorFilterRuleRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-rulenumber
ectmfrRuleNumber :: Lens' EC2TrafficMirrorFilterRule (Val Integer)
ectmfrRuleNumber = lens _eC2TrafficMirrorFilterRuleRuleNumber (\s a -> s { _eC2TrafficMirrorFilterRuleRuleNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourcecidrblock
ectmfrSourceCidrBlock :: Lens' EC2TrafficMirrorFilterRule (Val Text)
ectmfrSourceCidrBlock = lens _eC2TrafficMirrorFilterRuleSourceCidrBlock (\s a -> s { _eC2TrafficMirrorFilterRuleSourceCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourceportrange
ectmfrSourcePortRange :: Lens' EC2TrafficMirrorFilterRule (Maybe EC2TrafficMirrorFilterRuleTrafficMirrorPortRange)
ectmfrSourcePortRange = lens _eC2TrafficMirrorFilterRuleSourcePortRange (\s a -> s { _eC2TrafficMirrorFilterRuleSourcePortRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficdirection
ectmfrTrafficDirection :: Lens' EC2TrafficMirrorFilterRule (Val Text)
ectmfrTrafficDirection = lens _eC2TrafficMirrorFilterRuleTrafficDirection (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficDirection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorfilterid
ectmfrTrafficMirrorFilterId :: Lens' EC2TrafficMirrorFilterRule (Val Text)
ectmfrTrafficMirrorFilterId = lens _eC2TrafficMirrorFilterRuleTrafficMirrorFilterId (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficMirrorFilterId = a })
