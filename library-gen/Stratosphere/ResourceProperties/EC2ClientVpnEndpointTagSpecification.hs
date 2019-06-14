{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html

module Stratosphere.ResourceProperties.EC2ClientVpnEndpointTagSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2ClientVpnEndpointTagSpecification. See
-- 'ec2ClientVpnEndpointTagSpecification' for a more convenient constructor.
data EC2ClientVpnEndpointTagSpecification =
  EC2ClientVpnEndpointTagSpecification
  { _eC2ClientVpnEndpointTagSpecificationResourceType :: Maybe (Val Text)
  , _eC2ClientVpnEndpointTagSpecificationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2ClientVpnEndpointTagSpecification where
  toJSON EC2ClientVpnEndpointTagSpecification{..} =
    object $
    catMaybes
    [ fmap (("ResourceType",) . toJSON) _eC2ClientVpnEndpointTagSpecificationResourceType
    , fmap (("Tags",) . toJSON) _eC2ClientVpnEndpointTagSpecificationTags
    ]

-- | Constructor for 'EC2ClientVpnEndpointTagSpecification' containing
-- required fields as arguments.
ec2ClientVpnEndpointTagSpecification
  :: EC2ClientVpnEndpointTagSpecification
ec2ClientVpnEndpointTagSpecification  =
  EC2ClientVpnEndpointTagSpecification
  { _eC2ClientVpnEndpointTagSpecificationResourceType = Nothing
  , _eC2ClientVpnEndpointTagSpecificationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-resourcetype
eccvetsResourceType :: Lens' EC2ClientVpnEndpointTagSpecification (Maybe (Val Text))
eccvetsResourceType = lens _eC2ClientVpnEndpointTagSpecificationResourceType (\s a -> s { _eC2ClientVpnEndpointTagSpecificationResourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-tags
eccvetsTags :: Lens' EC2ClientVpnEndpointTagSpecification (Maybe [Tag])
eccvetsTags = lens _eC2ClientVpnEndpointTagSpecificationTags (\s a -> s { _eC2ClientVpnEndpointTagSpecificationTags = a })
