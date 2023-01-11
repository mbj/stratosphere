
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectFileSystemLocation where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectProjectFileSystemLocation.
-- See 'codeBuildProjectProjectFileSystemLocation' for a more convenient
-- constructor.
data CodeBuildProjectProjectFileSystemLocation =
  CodeBuildProjectProjectFileSystemLocation
  { _codeBuildProjectProjectFileSystemLocationIdentifier :: Val Text
  , _codeBuildProjectProjectFileSystemLocationLocation :: Val Text
  , _codeBuildProjectProjectFileSystemLocationMountOptions :: Maybe (Val Text)
  , _codeBuildProjectProjectFileSystemLocationMountPoint :: Val Text
  , _codeBuildProjectProjectFileSystemLocationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectFileSystemLocation where
  toJSON CodeBuildProjectProjectFileSystemLocation{..} =
    object $
    catMaybes
    [ (Just . ("Identifier",) . toJSON) _codeBuildProjectProjectFileSystemLocationIdentifier
    , (Just . ("Location",) . toJSON) _codeBuildProjectProjectFileSystemLocationLocation
    , fmap (("MountOptions",) . toJSON) _codeBuildProjectProjectFileSystemLocationMountOptions
    , (Just . ("MountPoint",) . toJSON) _codeBuildProjectProjectFileSystemLocationMountPoint
    , (Just . ("Type",) . toJSON) _codeBuildProjectProjectFileSystemLocationType
    ]

-- | Constructor for 'CodeBuildProjectProjectFileSystemLocation' containing
-- required fields as arguments.
codeBuildProjectProjectFileSystemLocation
  :: Val Text -- ^ 'cbppfslIdentifier'
  -> Val Text -- ^ 'cbppfslLocation'
  -> Val Text -- ^ 'cbppfslMountPoint'
  -> Val Text -- ^ 'cbppfslType'
  -> CodeBuildProjectProjectFileSystemLocation
codeBuildProjectProjectFileSystemLocation identifierarg locationarg mountPointarg typearg =
  CodeBuildProjectProjectFileSystemLocation
  { _codeBuildProjectProjectFileSystemLocationIdentifier = identifierarg
  , _codeBuildProjectProjectFileSystemLocationLocation = locationarg
  , _codeBuildProjectProjectFileSystemLocationMountOptions = Nothing
  , _codeBuildProjectProjectFileSystemLocationMountPoint = mountPointarg
  , _codeBuildProjectProjectFileSystemLocationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-identifier
cbppfslIdentifier :: Lens' CodeBuildProjectProjectFileSystemLocation (Val Text)
cbppfslIdentifier = lens _codeBuildProjectProjectFileSystemLocationIdentifier (\s a -> s { _codeBuildProjectProjectFileSystemLocationIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-location
cbppfslLocation :: Lens' CodeBuildProjectProjectFileSystemLocation (Val Text)
cbppfslLocation = lens _codeBuildProjectProjectFileSystemLocationLocation (\s a -> s { _codeBuildProjectProjectFileSystemLocationLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-mountoptions
cbppfslMountOptions :: Lens' CodeBuildProjectProjectFileSystemLocation (Maybe (Val Text))
cbppfslMountOptions = lens _codeBuildProjectProjectFileSystemLocationMountOptions (\s a -> s { _codeBuildProjectProjectFileSystemLocationMountOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-mountpoint
cbppfslMountPoint :: Lens' CodeBuildProjectProjectFileSystemLocation (Val Text)
cbppfslMountPoint = lens _codeBuildProjectProjectFileSystemLocationMountPoint (\s a -> s { _codeBuildProjectProjectFileSystemLocationMountPoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectfilesystemlocation.html#cfn-codebuild-project-projectfilesystemlocation-type
cbppfslType :: Lens' CodeBuildProjectProjectFileSystemLocation (Val Text)
cbppfslType = lens _codeBuildProjectProjectFileSystemLocationType (\s a -> s { _codeBuildProjectProjectFileSystemLocationType = a })
