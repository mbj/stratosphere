{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html

module Stratosphere.Resources.IoT1ClickProject where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoT1ClickProjectPlacementTemplate

-- | Full data type definition for IoT1ClickProject. See 'ioT1ClickProject'
-- for a more convenient constructor.
data IoT1ClickProject =
  IoT1ClickProject
  { _ioT1ClickProjectDescription :: Maybe (Val Text)
  , _ioT1ClickProjectPlacementTemplate :: IoT1ClickProjectPlacementTemplate
  , _ioT1ClickProjectProjectName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoT1ClickProject where
  toJSON IoT1ClickProject{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _ioT1ClickProjectDescription
    , (Just . ("PlacementTemplate",) . toJSON) _ioT1ClickProjectPlacementTemplate
    , (Just . ("ProjectName",) . toJSON) _ioT1ClickProjectProjectName
    ]

instance FromJSON IoT1ClickProject where
  parseJSON (Object obj) =
    IoT1ClickProject <$>
      (obj .:? "Description") <*>
      (obj .: "PlacementTemplate") <*>
      (obj .: "ProjectName")
  parseJSON _ = mempty

-- | Constructor for 'IoT1ClickProject' containing required fields as
-- arguments.
ioT1ClickProject
  :: IoT1ClickProjectPlacementTemplate -- ^ 'itcprPlacementTemplate'
  -> Val Text -- ^ 'itcprProjectName'
  -> IoT1ClickProject
ioT1ClickProject placementTemplatearg projectNamearg =
  IoT1ClickProject
  { _ioT1ClickProjectDescription = Nothing
  , _ioT1ClickProjectPlacementTemplate = placementTemplatearg
  , _ioT1ClickProjectProjectName = projectNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-description
itcprDescription :: Lens' IoT1ClickProject (Maybe (Val Text))
itcprDescription = lens _ioT1ClickProjectDescription (\s a -> s { _ioT1ClickProjectDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-placementtemplate
itcprPlacementTemplate :: Lens' IoT1ClickProject IoT1ClickProjectPlacementTemplate
itcprPlacementTemplate = lens _ioT1ClickProjectPlacementTemplate (\s a -> s { _ioT1ClickProjectPlacementTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-projectname
itcprProjectName :: Lens' IoT1ClickProject (Val Text)
itcprProjectName = lens _ioT1ClickProjectProjectName (\s a -> s { _ioT1ClickProjectProjectName = a })
