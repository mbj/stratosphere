{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html

module Stratosphere.Resources.IoT1ClickPlacement where

import Stratosphere.ResourceImports


-- | Full data type definition for IoT1ClickPlacement. See
-- 'ioT1ClickPlacement' for a more convenient constructor.
data IoT1ClickPlacement =
  IoT1ClickPlacement
  { _ioT1ClickPlacementAssociatedDevices :: Maybe Object
  , _ioT1ClickPlacementAttributes :: Maybe Object
  , _ioT1ClickPlacementPlacementName :: Maybe (Val Text)
  , _ioT1ClickPlacementProjectName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties IoT1ClickPlacement where
  toResourceProperties IoT1ClickPlacement{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT1Click::Placement"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AssociatedDevices",) . toJSON) _ioT1ClickPlacementAssociatedDevices
        , fmap (("Attributes",) . toJSON) _ioT1ClickPlacementAttributes
        , fmap (("PlacementName",) . toJSON) _ioT1ClickPlacementPlacementName
        , (Just . ("ProjectName",) . toJSON) _ioT1ClickPlacementProjectName
        ]
    }

-- | Constructor for 'IoT1ClickPlacement' containing required fields as
-- arguments.
ioT1ClickPlacement
  :: Val Text -- ^ 'itcplProjectName'
  -> IoT1ClickPlacement
ioT1ClickPlacement projectNamearg =
  IoT1ClickPlacement
  { _ioT1ClickPlacementAssociatedDevices = Nothing
  , _ioT1ClickPlacementAttributes = Nothing
  , _ioT1ClickPlacementPlacementName = Nothing
  , _ioT1ClickPlacementProjectName = projectNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-associateddevices
itcplAssociatedDevices :: Lens' IoT1ClickPlacement (Maybe Object)
itcplAssociatedDevices = lens _ioT1ClickPlacementAssociatedDevices (\s a -> s { _ioT1ClickPlacementAssociatedDevices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-attributes
itcplAttributes :: Lens' IoT1ClickPlacement (Maybe Object)
itcplAttributes = lens _ioT1ClickPlacementAttributes (\s a -> s { _ioT1ClickPlacementAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-placementname
itcplPlacementName :: Lens' IoT1ClickPlacement (Maybe (Val Text))
itcplPlacementName = lens _ioT1ClickPlacementPlacementName (\s a -> s { _ioT1ClickPlacementPlacementName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-projectname
itcplProjectName :: Lens' IoT1ClickPlacement (Val Text)
itcplProjectName = lens _ioT1ClickPlacementProjectName (\s a -> s { _ioT1ClickPlacementProjectName = a })
