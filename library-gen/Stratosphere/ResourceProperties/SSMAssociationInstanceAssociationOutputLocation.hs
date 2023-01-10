
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html

module Stratosphere.ResourceProperties.SSMAssociationInstanceAssociationOutputLocation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMAssociationS3OutputLocation

-- | Full data type definition for
-- SSMAssociationInstanceAssociationOutputLocation. See
-- 'ssmAssociationInstanceAssociationOutputLocation' for a more convenient
-- constructor.
data SSMAssociationInstanceAssociationOutputLocation =
  SSMAssociationInstanceAssociationOutputLocation
  { _sSMAssociationInstanceAssociationOutputLocationS3Location :: Maybe SSMAssociationS3OutputLocation
  } deriving (Show, Eq)

instance ToJSON SSMAssociationInstanceAssociationOutputLocation where
  toJSON SSMAssociationInstanceAssociationOutputLocation{..} =
    object $
    catMaybes
    [ fmap (("S3Location",) . toJSON) _sSMAssociationInstanceAssociationOutputLocationS3Location
    ]

-- | Constructor for 'SSMAssociationInstanceAssociationOutputLocation'
-- containing required fields as arguments.
ssmAssociationInstanceAssociationOutputLocation
  :: SSMAssociationInstanceAssociationOutputLocation
ssmAssociationInstanceAssociationOutputLocation  =
  SSMAssociationInstanceAssociationOutputLocation
  { _sSMAssociationInstanceAssociationOutputLocationS3Location = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location
ssmaiaolS3Location :: Lens' SSMAssociationInstanceAssociationOutputLocation (Maybe SSMAssociationS3OutputLocation)
ssmaiaolS3Location = lens _sSMAssociationInstanceAssociationOutputLocationS3Location (\s a -> s { _sSMAssociationInstanceAssociationOutputLocationS3Location = a })
