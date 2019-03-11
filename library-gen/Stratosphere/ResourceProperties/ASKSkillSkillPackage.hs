{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html

module Stratosphere.ResourceProperties.ASKSkillSkillPackage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ASKSkillOverrides

-- | Full data type definition for ASKSkillSkillPackage. See
-- 'askSkillSkillPackage' for a more convenient constructor.
data ASKSkillSkillPackage =
  ASKSkillSkillPackage
  { _aSKSkillSkillPackageOverrides :: Maybe ASKSkillOverrides
  , _aSKSkillSkillPackageS3Bucket :: Val Text
  , _aSKSkillSkillPackageS3BucketRole :: Maybe (Val Text)
  , _aSKSkillSkillPackageS3Key :: Val Text
  , _aSKSkillSkillPackageS3ObjectVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ASKSkillSkillPackage where
  toJSON ASKSkillSkillPackage{..} =
    object $
    catMaybes
    [ fmap (("Overrides",) . toJSON) _aSKSkillSkillPackageOverrides
    , (Just . ("S3Bucket",) . toJSON) _aSKSkillSkillPackageS3Bucket
    , fmap (("S3BucketRole",) . toJSON) _aSKSkillSkillPackageS3BucketRole
    , (Just . ("S3Key",) . toJSON) _aSKSkillSkillPackageS3Key
    , fmap (("S3ObjectVersion",) . toJSON) _aSKSkillSkillPackageS3ObjectVersion
    ]

-- | Constructor for 'ASKSkillSkillPackage' containing required fields as
-- arguments.
askSkillSkillPackage
  :: Val Text -- ^ 'asksspS3Bucket'
  -> Val Text -- ^ 'asksspS3Key'
  -> ASKSkillSkillPackage
askSkillSkillPackage s3Bucketarg s3Keyarg =
  ASKSkillSkillPackage
  { _aSKSkillSkillPackageOverrides = Nothing
  , _aSKSkillSkillPackageS3Bucket = s3Bucketarg
  , _aSKSkillSkillPackageS3BucketRole = Nothing
  , _aSKSkillSkillPackageS3Key = s3Keyarg
  , _aSKSkillSkillPackageS3ObjectVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-overrides
asksspOverrides :: Lens' ASKSkillSkillPackage (Maybe ASKSkillOverrides)
asksspOverrides = lens _aSKSkillSkillPackageOverrides (\s a -> s { _aSKSkillSkillPackageOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucket
asksspS3Bucket :: Lens' ASKSkillSkillPackage (Val Text)
asksspS3Bucket = lens _aSKSkillSkillPackageS3Bucket (\s a -> s { _aSKSkillSkillPackageS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucketrole
asksspS3BucketRole :: Lens' ASKSkillSkillPackage (Maybe (Val Text))
asksspS3BucketRole = lens _aSKSkillSkillPackageS3BucketRole (\s a -> s { _aSKSkillSkillPackageS3BucketRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3key
asksspS3Key :: Lens' ASKSkillSkillPackage (Val Text)
asksspS3Key = lens _aSKSkillSkillPackageS3Key (\s a -> s { _aSKSkillSkillPackageS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3objectversion
asksspS3ObjectVersion :: Lens' ASKSkillSkillPackage (Maybe (Val Text))
asksspS3ObjectVersion = lens _aSKSkillSkillPackageS3ObjectVersion (\s a -> s { _aSKSkillSkillPackageS3ObjectVersion = a })
