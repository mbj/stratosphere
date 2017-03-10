{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html

module Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2NetworkAclEntryPortRange. See
-- 'ec2NetworkAclEntryPortRange' for a more convenient constructor.
data EC2NetworkAclEntryPortRange =
  EC2NetworkAclEntryPortRange
  { _eC2NetworkAclEntryPortRangeFrom :: Maybe (Val Integer')
  , _eC2NetworkAclEntryPortRangeTo :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON EC2NetworkAclEntryPortRange where
  toJSON EC2NetworkAclEntryPortRange{..} =
    object $
    catMaybes
    [ ("From" .=) <$> _eC2NetworkAclEntryPortRangeFrom
    , ("To" .=) <$> _eC2NetworkAclEntryPortRangeTo
    ]

instance FromJSON EC2NetworkAclEntryPortRange where
  parseJSON (Object obj) =
    EC2NetworkAclEntryPortRange <$>
      obj .:? "From" <*>
      obj .:? "To"
  parseJSON _ = mempty

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
ecnaeprFrom :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer'))
ecnaeprFrom = lens _eC2NetworkAclEntryPortRangeFrom (\s a -> s { _eC2NetworkAclEntryPortRangeFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to
ecnaeprTo :: Lens' EC2NetworkAclEntryPortRange (Maybe (Val Integer'))
ecnaeprTo = lens _eC2NetworkAclEntryPortRangeTo (\s a -> s { _eC2NetworkAclEntryPortRangeTo = a })
