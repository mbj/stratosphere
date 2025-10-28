module Stratosphere.BCMDataExports.Export.ResourceTagProperty (
        ResourceTagProperty(..), mkResourceTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceTagProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-resourcetag.html>
    ResourceTagProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-resourcetag.html#cfn-bcmdataexports-export-resourcetag-key>
                         key :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-resourcetag.html#cfn-bcmdataexports-export-resourcetag-value>
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ResourceTagProperty
mkResourceTagProperty key value
  = ResourceTagProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties ResourceTagProperty where
  toResourceProperties ResourceTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.ResourceTag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ResourceTagProperty where
  toJSON ResourceTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ResourceTagProperty where
  type PropertyType "Key" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {key = newValue, ..}
instance Property "Value" ResourceTagProperty where
  type PropertyType "Value" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {value = newValue, ..}