module Stratosphere.Evidently.Launch.LaunchGroupObjectProperty (
        LaunchGroupObjectProperty(..), mkLaunchGroupObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchGroupObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-launchgroupobject.html>
    LaunchGroupObjectProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-launchgroupobject.html#cfn-evidently-launch-launchgroupobject-description>
                               description :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-launchgroupobject.html#cfn-evidently-launch-launchgroupobject-feature>
                               feature :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-launchgroupobject.html#cfn-evidently-launch-launchgroupobject-groupname>
                               groupName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-launchgroupobject.html#cfn-evidently-launch-launchgroupobject-variation>
                               variation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchGroupObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LaunchGroupObjectProperty
mkLaunchGroupObjectProperty feature groupName variation
  = LaunchGroupObjectProperty
      {haddock_workaround_ = (), feature = feature,
       groupName = groupName, variation = variation,
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