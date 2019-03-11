{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html

module Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2NetworkAclEntryPortRange. See
-- 'ec2NetworkAclEntryPortRange' for a more convenient constructor.
data EC2NetworkAclEntryPortRange =
  EC2NetworkAclEntryPortRange
  { _eC2NetworkAclEntryPortRangeFrom :: Maybe (Val Integer)
  , _eC2NetworkAclEntryPortRangeTo :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2NetworkAclEntryPortRange where
  toJSON EC2NetworkAclEntryPortRange{..} =
    object $
    catMaybes
    [ fmap (("From",) . toJSON . fmap Integer') _eC2NetworkAclEntryPortRangeFrom
    , fmap (("To",) . toJSON . fmap Integer') _eC2NetworkAclEntryPortRangeTo
    ]

-- | Constructor for 'EC2NetworkAclEntryPortRange' containing required fields
-- as arguments.
ec2NetworkAclEntryPortRange
  :: EC2NetworkAclEntryPortRange
ec2NetworkAclEntryPortRange  =
  EC2NetworkAclEntryPortRange
  { _eC2NetworkAclEntryPortRangeFrom = Nothing
  , _eC2NetworkAclEntryPortRangeTo = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from
ecnaeprFrom :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer))
ecnaeprFrom = lens _eC2NetworkAclEntryPortRangeFrom (\s a -> s { _eC2NetworkAclEntryPortRangeFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to
ecnaeprTo :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer))
ecnaeprTo = lens _eC2NetworkAclEntryPortRangeTo (\s a -> s { _eC2NetworkAclEntryPortRangeTo = a })
