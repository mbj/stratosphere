module Stratosphere.Evidently.Launch.LaunchGroupObjectProperty (
        LaunchGroupObjectProperty(..), mkLaunchGroupObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchGroupObjectProperty
  = LaunchGroupObjectProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                               feature :: (Value Prelude.Text),
                               groupName :: (Value Prelude.Text),
                               variation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchGroupObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LaunchGroupObjectProperty
mkLaunchGroupObjectProperty feature groupName variation
  = LaunchGroupObjectProperty
      {feature = feature, groupName = groupName, variation = variation,
       description = Prelude.Nothing}
instance ToResourceProperties LaunchGroupObjectProperty where
  toResourceProperties LaunchGroupObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.LaunchGroupObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Feature" JSON..= feature, "GroupName" JSON..= groupName,
                            "Variation" JSON..= variation]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON LaunchGroupObjectProperty where
  toJSON LaunchGroupObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Feature" JSON..= feature, "GroupName" JSON..= groupName,
               "Variation" JSON..= variation]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" LaunchGroupObjectProperty where
  type PropertyType "Description" LaunchGroupObjectProperty = Value Prelude.Text
  set newValue LaunchGroupObjectProperty {..}
    = LaunchGroupObjectProperty
        {description = Prelude.pure newValue, ..}
instance Property "Feature" LaunchGroupObjectProperty where
  type PropertyType "Feature" LaunchGroupObjectProperty = Value Prelude.Text
  set newValue LaunchGroupObjectProperty {..}
    = LaunchGroupObjectProperty {feature = newValue, ..}
instance Property "GroupName" LaunchGroupObjectProperty where
  type PropertyType "GroupName" LaunchGroupObjectProperty = Value Prelude.Text
  set newValue LaunchGroupObjectProperty {..}
    = LaunchGroupObjectProperty {groupName = newValue, ..}
instance Property "Variation" LaunchGroupObjectProperty where
  type PropertyType "Variation" LaunchGroupObjectProperty = Value Prelude.Text
  set newValue LaunchGroupObjectProperty {..}
    = LaunchGroupObjectProperty {variation = newValue, ..}