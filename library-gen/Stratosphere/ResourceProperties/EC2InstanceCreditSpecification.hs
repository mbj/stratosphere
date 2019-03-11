{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html

module Stratosphere.ResourceProperties.EC2InstanceCreditSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceCreditSpecification. See
-- 'ec2InstanceCreditSpecification' for a more convenient constructor.
data EC2InstanceCreditSpecification =
  EC2InstanceCreditSpecification
  { _eC2InstanceCreditSpecificationCPUCredits :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceCreditSpecification where
  toJSON EC2InstanceCreditSpecification{..} =
    object $
    catMaybes
    [ fmap (("CPUCredits",) . toJSON) _eC2InstanceCreditSpecificationCPUCredits
    ]

-- | Constructor for 'EC2InstanceCreditSpecification' containing required
-- fields as arguments.
ec2InstanceCreditSpecification
  :: EC2InstanceCreditSpecification
ec2InstanceCreditSpecification  =
  EC2InstanceCreditSpecification
  { _eC2InstanceCreditSpecificationCPUCredits = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html#cfn-ec2-instance-creditspecification-cpucredits
ecicsCPUCredits :: Lens' EC2InstanceCreditSpecification (Maybe (Val Text))
ecicsCPUCredits = lens _eC2InstanceCreditSpecificationCPUCredits (\s a -> s { _eC2InstanceCreditSpecificationCPUCredits = a })
