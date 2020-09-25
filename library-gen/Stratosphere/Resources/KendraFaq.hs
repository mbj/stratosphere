{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html

module Stratosphere.Resources.KendraFaq where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraFaqS3Path
import Stratosphere.ResourceProperties.KendraFaqTagList

-- | Full data type definition for KendraFaq. See 'kendraFaq' for a more
-- convenient constructor.
data KendraFaq =
  KendraFaq
  { _kendraFaqDescription :: Maybe (Val Text)
  , _kendraFaqIndexId :: Val Text
  , _kendraFaqName :: Val Text
  , _kendraFaqRoleArn :: Val Text
  , _kendraFaqS3Path :: KendraFaqS3Path
  , _kendraFaqTags :: Maybe KendraFaqTagList
  } deriving (Show, Eq)

instance ToResourceProperties KendraFaq where
  toResourceProperties KendraFaq{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Kendra::Faq"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _kendraFaqDescription
        , (Just . ("IndexId",) . toJSON) _kendraFaqIndexId
        , (Just . ("Name",) . toJSON) _kendraFaqName
        , (Just . ("RoleArn",) . toJSON) _kendraFaqRoleArn
        , (Just . ("S3Path",) . toJSON) _kendraFaqS3Path
        , fmap (("Tags",) . toJSON) _kendraFaqTags
        ]
    }

-- | Constructor for 'KendraFaq' containing required fields as arguments.
kendraFaq
  :: Val Text -- ^ 'kfIndexId'
  -> Val Text -- ^ 'kfName'
  -> Val Text -- ^ 'kfRoleArn'
  -> KendraFaqS3Path -- ^ 'kfS3Path'
  -> KendraFaq
kendraFaq indexIdarg namearg roleArnarg s3Patharg =
  KendraFaq
  { _kendraFaqDescription = Nothing
  , _kendraFaqIndexId = indexIdarg
  , _kendraFaqName = namearg
  , _kendraFaqRoleArn = roleArnarg
  , _kendraFaqS3Path = s3Patharg
  , _kendraFaqTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-description
kfDescription :: Lens' KendraFaq (Maybe (Val Text))
kfDescription = lens _kendraFaqDescription (\s a -> s { _kendraFaqDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-indexid
kfIndexId :: Lens' KendraFaq (Val Text)
kfIndexId = lens _kendraFaqIndexId (\s a -> s { _kendraFaqIndexId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-name
kfName :: Lens' KendraFaq (Val Text)
kfName = lens _kendraFaqName (\s a -> s { _kendraFaqName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-rolearn
kfRoleArn :: Lens' KendraFaq (Val Text)
kfRoleArn = lens _kendraFaqRoleArn (\s a -> s { _kendraFaqRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-s3path
kfS3Path :: Lens' KendraFaq KendraFaqS3Path
kfS3Path = lens _kendraFaqS3Path (\s a -> s { _kendraFaqS3Path = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-faq.html#cfn-kendra-faq-tags
kfTags :: Lens' KendraFaq (Maybe KendraFaqTagList)
kfTags = lens _kendraFaqTags (\s a -> s { _kendraFaqTags = a })
