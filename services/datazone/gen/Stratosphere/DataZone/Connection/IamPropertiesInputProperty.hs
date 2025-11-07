module Stratosphere.DataZone.Connection.IamPropertiesInputProperty (
        IamPropertiesInputProperty(..), mkIamPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-iampropertiesinput.html>
    IamPropertiesInputProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-iampropertiesinput.html#cfn-datazone-connection-iampropertiesinput-gluelineagesyncenabled>
                                glueLineageSyncEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamPropertiesInputProperty :: IamPropertiesInputProperty
mkIamPropertiesInputProperty
  = IamPropertiesInputProperty
      {haddock_workaround_ = (),
       glueLineageSyncEnabled = Prelude.Nothing}
instance ToResourceProperties IamPropertiesInputProperty where
  toResourceProperties IamPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.IamPropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueLineageSyncEnabled"
                              Prelude.<$> glueLineageSyncEnabled])}
instance JSON.ToJSON IamPropertiesInputProperty where
  toJSON IamPropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueLineageSyncEnabled"
                 Prelude.<$> glueLineageSyncEnabled]))
instance Property "GlueLineageSyncEnabled" IamPropertiesInputProperty where
  type PropertyType "GlueLineageSyncEnabled" IamPropertiesInputProperty = Value Prelude.Bool
  set newValue IamPropertiesInputProperty {..}
    = IamPropertiesInputProperty
        {glueLineageSyncEnabled = Prelude.pure newValue, ..}