{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html

module Stratosphere.Resources.CodeGuruReviewerRepositoryAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeGuruReviewerRepositoryAssociation. See
-- 'codeGuruReviewerRepositoryAssociation' for a more convenient
-- constructor.
data CodeGuruReviewerRepositoryAssociation =
  CodeGuruReviewerRepositoryAssociation
  { _codeGuruReviewerRepositoryAssociationConnectionArn :: Maybe (Val Text)
  , _codeGuruReviewerRepositoryAssociationName :: Val Text
  , _codeGuruReviewerRepositoryAssociationOwner :: Maybe (Val Text)
  , _codeGuruReviewerRepositoryAssociationType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeGuruReviewerRepositoryAssociation where
  toResourceProperties CodeGuruReviewerRepositoryAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeGuruReviewer::RepositoryAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConnectionArn",) . toJSON) _codeGuruReviewerRepositoryAssociationConnectionArn
        , (Just . ("Name",) . toJSON) _codeGuruReviewerRepositoryAssociationName
        , fmap (("Owner",) . toJSON) _codeGuruReviewerRepositoryAssociationOwner
        , (Just . ("Type",) . toJSON) _codeGuruReviewerRepositoryAssociationType
        ]
    }

-- | Constructor for 'CodeGuruReviewerRepositoryAssociation' containing
-- required fields as arguments.
codeGuruReviewerRepositoryAssociation
  :: Val Text -- ^ 'cgrraName'
  -> Val Text -- ^ 'cgrraType'
  -> CodeGuruReviewerRepositoryAssociation
codeGuruReviewerRepositoryAssociation namearg typearg =
  CodeGuruReviewerRepositoryAssociation
  { _codeGuruReviewerRepositoryAssociationConnectionArn = Nothing
  , _codeGuruReviewerRepositoryAssociationName = namearg
  , _codeGuruReviewerRepositoryAssociationOwner = Nothing
  , _codeGuruReviewerRepositoryAssociationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-connectionarn
cgrraConnectionArn :: Lens' CodeGuruReviewerRepositoryAssociation (Maybe (Val Text))
cgrraConnectionArn = lens _codeGuruReviewerRepositoryAssociationConnectionArn (\s a -> s { _codeGuruReviewerRepositoryAssociationConnectionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-name
cgrraName :: Lens' CodeGuruReviewerRepositoryAssociation (Val Text)
cgrraName = lens _codeGuruReviewerRepositoryAssociationName (\s a -> s { _codeGuruReviewerRepositoryAssociationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-owner
cgrraOwner :: Lens' CodeGuruReviewerRepositoryAssociation (Maybe (Val Text))
cgrraOwner = lens _codeGuruReviewerRepositoryAssociationOwner (\s a -> s { _codeGuruReviewerRepositoryAssociationOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-type
cgrraType :: Lens' CodeGuruReviewerRepositoryAssociation (Val Text)
cgrraType = lens _codeGuruReviewerRepositoryAssociationType (\s a -> s { _codeGuruReviewerRepositoryAssociationType = a })
