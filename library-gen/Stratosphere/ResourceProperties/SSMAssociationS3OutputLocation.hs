{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html

module Stratosphere.ResourceProperties.SSMAssociationS3OutputLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMAssociationS3OutputLocation. See
-- 'ssmAssociationS3OutputLocation' for a more convenient constructor.
data SSMAssociationS3OutputLocation =
  SSMAssociationS3OutputLocation
  { _sSMAssociationS3OutputLocationOutputS3BucketName :: Maybe (Val Text)
  , _sSMAssociationS3OutputLocationOutputS3KeyPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMAssociationS3OutputLocation where
  toJSON SSMAssociationS3OutputLocation{..} =
    object $
    catMaybes
    [ fmap (("OutputS3BucketName",) . toJSON) _sSMAssociationS3OutputLocationOutputS3BucketName
    , fmap (("OutputS3KeyPrefix",) . toJSON) _sSMAssociationS3OutputLocationOutputS3KeyPrefix
    ]

-- | Constructor for 'SSMAssociationS3OutputLocation' containing required
-- fields as arguments.
ssmAssociationS3OutputLocation
  :: SSMAssociationS3OutputLocation
ssmAssociationS3OutputLocation  =
  SSMAssociationS3OutputLocation
  { _sSMAssociationS3OutputLocationOutputS3BucketName = Nothing
  , _sSMAssociationS3OutputLocationOutputS3KeyPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3bucketname
ssmasolOutputS3BucketName :: Lens' SSMAssociationS3OutputLocation (Maybe (Val Text))
ssmasolOutputS3BucketName = lens _sSMAssociationS3OutputLocationOutputS3BucketName (\s a -> s { _sSMAssociationS3OutputLocationOutputS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3keyprefix
ssmasolOutputS3KeyPrefix :: Lens' SSMAssociationS3OutputLocation (Maybe (Val Text))
ssmasolOutputS3KeyPrefix = lens _sSMAssociationS3OutputLocationOutputS3KeyPrefix (\s a -> s { _sSMAssociationS3OutputLocationOutputS3KeyPrefix = a })
