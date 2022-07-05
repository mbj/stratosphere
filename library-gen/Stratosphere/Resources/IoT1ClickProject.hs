{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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
  , _ioT1ClickProjectProjectName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IoT1ClickProject where
  toResourceProperties IoT1ClickProject{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT1Click::Project"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _ioT1ClickProjectDescription
        , (Just . ("PlacementTemplate",) . toJSON) _ioT1ClickProjectPlacementTemplate
        , fmap (("ProjectName",) . toJSON) _ioT1ClickProjectProjectName
        ]
    }

-- | Constructor for 'IoT1ClickProject' containing required fields as
-- arguments.
ioT1ClickProject
  :: IoT1ClickProjectPlacementTemplate -- ^ 'itcprPlacementTemplate'
  -> IoT1ClickProject
ioT1ClickProject placementTemplatearg =
  IoT1ClickProject
  { _ioT1ClickProjectDescription = Nothing
  , _ioT1ClickProjectPlacementTemplate = placementTemplatearg
  , _ioT1ClickProjectProjectName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-description
itcprDescription :: Lens' IoT1ClickProject (Maybe (Val Text))
itcprDescription = lens _ioT1ClickProjectDescription (\s a -> s { _ioT1ClickProjectDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-placementtemplate
itcprPlacementTemplate :: Lens' IoT1ClickProject IoT1ClickProjectPlacementTemplate
itcprPlacementTemplate = lens _ioT1ClickProjectPlacementTemplate (\s a -> s { _ioT1ClickProjectPlacementTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-projectname
itcprProjectName :: Lens' IoT1ClickProject (Maybe (Val Text))
itcprProjectName = lens _ioT1ClickProjectProjectName (\s a -> s { _ioT1ClickProjectProjectName = a })
