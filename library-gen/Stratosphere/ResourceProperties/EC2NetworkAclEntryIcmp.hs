{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html

module Stratosphere.ResourceProperties.EC2NetworkAclEntryIcmp where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2NetworkAclEntryIcmp. See
-- 'ec2NetworkAclEntryIcmp' for a more convenient constructor.
data EC2NetworkAclEntryIcmp =
  EC2NetworkAclEntryIcmp
  { _eC2NetworkAclEntryIcmpCode :: Maybe (Val Integer)
  , _eC2NetworkAclEntryIcmpType :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2NetworkAclEntryIcmp where
  toJSON EC2NetworkAclEntryIcmp{..} =
    object $
    catMaybes
    [ fmap (("Code",) . toJSON . fmap Integer') _eC2NetworkAclEntryIcmpCode
    , fmap (("Type",) . toJSON . fmap Integer') _eC2NetworkAclEntryIcmpType
    ]

instance FromJSON EC2NetworkAclEntryIcmp where
  parseJSON (Object obj) =
    EC2NetworkAclEntryIcmp <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Code") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Type")
  parseJSON _ = mempty

-- | Constructor for 'EC2NetworkAclEntryIcmp' containing required fields as
-- arguments.
ec2NetworkAclEntryIcmp
  :: EC2NetworkAclEntryIcmp
ec2NetworkAclEntryIcmp  =
  EC2NetworkAclEntryIcmp
  { _eC2NetworkAclEntryIcmpCode = Nothing
  , _eC2NetworkAclEntryIcmpType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
ecnaeiCode :: Lens' EC2NetworkAclEntryIcmp (Maybe (Val Integer))
ecnaeiCode = lens _eC2NetworkAclEntryIcmpCode (\s a -> s { _eC2NetworkAclEntryIcmpCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
ecnaeiType :: Lens' EC2NetworkAclEntryIcmp (Maybe (Val Integer))
ecnaeiType = lens _eC2NetworkAclEntryIcmpType (\s a -> s { _eC2NetworkAclEntryIcmpType = a })
