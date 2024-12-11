module Stratosphere.IoT.ThingType.PropagatingAttributeProperty (
        PropagatingAttributeProperty(..), mkPropagatingAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropagatingAttributeProperty
  = PropagatingAttributeProperty {connectionAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                  thingAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                  userPropertyKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropagatingAttributeProperty ::
  Value Prelude.Text -> PropagatingAttributeProperty
mkPropagatingAttributeProperty userPropertyKey
  = PropagatingAttributeProperty
      {userPropertyKey = userPropertyKey,
       connectionAttribute = Prelude.Nothing,
       thingAttribute = Prelude.Nothing}
instance ToResourceProperties PropagatingAttributeProperty where
  toResourceProperties PropagatingAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingType.PropagatingAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPropertyKey" JSON..= userPropertyKey]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionAttribute" Prelude.<$> connectionAttribute,
                               (JSON..=) "ThingAttribute" Prelude.<$> thingAttribute]))}
instance JSON.ToJSON PropagatingAttributeProperty where
  toJSON PropagatingAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPropertyKey" JSON..= userPropertyKey]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionAttribute" Prelude.<$> connectionAttribute,
                  (JSON..=) "ThingAttribute" Prelude.<$> thingAttribute])))
instance Property "ConnectionAttribute" PropagatingAttributeProperty where
  type PropertyType "ConnectionAttribute" PropagatingAttributeProperty = Value Prelude.Text
  set newValue PropagatingAttributeProperty {..}
    = PropagatingAttributeProperty
        {connectionAttribute = Prelude.pure newValue, ..}
instance Property "ThingAttribute" PropagatingAttributeProperty where
  type PropertyType "ThingAttribute" PropagatingAttributeProperty = Value Prelude.Text
  set newValue PropagatingAttributeProperty {..}
    = PropagatingAttributeProperty
        {thingAttribute = Prelude.pure newValue, ..}
instance Property "UserPropertyKey" PropagatingAttributeProperty where
  type PropertyType "UserPropertyKey" PropagatingAttributeProperty = Value Prelude.Text
  set newValue PropagatingAttributeProperty {..}
    = PropagatingAttributeProperty {userPropertyKey = newValue, ..}