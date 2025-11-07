module Stratosphere.CustomerProfiles.EventTrigger.EventTriggerDimensionProperty (
        module Exports, EventTriggerDimensionProperty(..),
        mkEventTriggerDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.EventTrigger.ObjectAttributeProperty as Exports
import Stratosphere.ResourceProperties
data EventTriggerDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggerdimension.html>
    EventTriggerDimensionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggerdimension.html#cfn-customerprofiles-eventtrigger-eventtriggerdimension-objectattributes>
                                   objectAttributes :: [ObjectAttributeProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventTriggerDimensionProperty ::
  [ObjectAttributeProperty] -> EventTriggerDimensionProperty
mkEventTriggerDimensionProperty objectAttributes
  = EventTriggerDimensionProperty
      {haddock_workaround_ = (), objectAttributes = objectAttributes}
instance ToResourceProperties EventTriggerDimensionProperty where
  toResourceProperties EventTriggerDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger.EventTriggerDimension",
         supportsTags = Prelude.False,
         properties = ["ObjectAttributes" JSON..= objectAttributes]}
instance JSON.ToJSON EventTriggerDimensionProperty where
  toJSON EventTriggerDimensionProperty {..}
    = JSON.object ["ObjectAttributes" JSON..= objectAttributes]
instance Property "ObjectAttributes" EventTriggerDimensionProperty where
  type PropertyType "ObjectAttributes" EventTriggerDimensionProperty = [ObjectAttributeProperty]
  set newValue EventTriggerDimensionProperty {..}
    = EventTriggerDimensionProperty {objectAttributes = newValue, ..}