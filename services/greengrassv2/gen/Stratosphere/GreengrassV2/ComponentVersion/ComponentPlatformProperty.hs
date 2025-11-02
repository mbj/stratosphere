module Stratosphere.GreengrassV2.ComponentVersion.ComponentPlatformProperty (
        ComponentPlatformProperty(..), mkComponentPlatformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentPlatformProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html>
    ComponentPlatformProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html#cfn-greengrassv2-componentversion-componentplatform-attributes>
                               attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html#cfn-greengrassv2-componentversion-componentplatform-name>
                               name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentPlatformProperty :: ComponentPlatformProperty
mkComponentPlatformProperty
  = ComponentPlatformProperty
      {haddock_workaround_ = (), attributes = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ComponentPlatformProperty where
  toResourceProperties ComponentPlatformProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.ComponentPlatform",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ComponentPlatformProperty where
  toJSON ComponentPlatformProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Attributes" ComponentPlatformProperty where
  type PropertyType "Attributes" ComponentPlatformProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentPlatformProperty {..}
    = ComponentPlatformProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "Name" ComponentPlatformProperty where
  type PropertyType "Name" ComponentPlatformProperty = Value Prelude.Text
  set newValue ComponentPlatformProperty {..}
    = ComponentPlatformProperty {name = Prelude.pure newValue, ..}