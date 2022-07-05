{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html

module Stratosphere.Resources.EC2TrafficMirrorFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TrafficMirrorFilter. See
-- 'ec2TrafficMirrorFilter' for a more convenient constructor.
data EC2TrafficMirrorFilter =
  EC2TrafficMirrorFilter
  { _eC2TrafficMirrorFilterDescription :: Maybe (Val Text)
  , _eC2TrafficMirrorFilterNetworkServices :: Maybe (ValList Text)
  , _eC2TrafficMirrorFilterTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2TrafficMirrorFilter where
  toResourceProperties EC2TrafficMirrorFilter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TrafficMirrorFilter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eC2TrafficMirrorFilterDescription
        , fmap (("NetworkServices",) . toJSON) _eC2TrafficMirrorFilterNetworkServices
        , fmap (("Tags",) . toJSON) _eC2TrafficMirrorFilterTags
        ]
    }

-- | Constructor for 'EC2TrafficMirrorFilter' containing required fields as
-- arguments.
ec2TrafficMirrorFilter
  :: EC2TrafficMirrorFilter
ec2TrafficMirrorFilter  =
  EC2TrafficMirrorFilter
  { _eC2TrafficMirrorFilterDescription = Nothing
  , _eC2TrafficMirrorFilterNetworkServices = Nothing
  , _eC2TrafficMirrorFilterTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-description
ectmfDescription :: Lens' EC2TrafficMirrorFilter (Maybe (Val Text))
ectmfDescription = lens _eC2TrafficMirrorFilterDescription (\s a -> s { _eC2TrafficMirrorFilterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-networkservices
ectmfNetworkServices :: Lens' EC2TrafficMirrorFilter (Maybe (ValList Text))
ectmfNetworkServices = lens _eC2TrafficMirrorFilterNetworkServices (\s a -> s { _eC2TrafficMirrorFilterNetworkServices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-tags
ectmfTags :: Lens' EC2TrafficMirrorFilter (Maybe [Tag])
ectmfTags = lens _eC2TrafficMirrorFilterTags (\s a -> s { _eC2TrafficMirrorFilterTags = a })
