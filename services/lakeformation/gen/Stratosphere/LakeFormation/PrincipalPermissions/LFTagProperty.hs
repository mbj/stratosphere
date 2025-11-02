module Stratosphere.LakeFormation.PrincipalPermissions.LFTagProperty (
        LFTagProperty(..), mkLFTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LFTagProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftag.html>
    LFTagProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftag.html#cfn-lakeformation-principalpermissions-lftag-tagkey>
                   tagKey :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftag.html#cfn-lakeformation-principalpermissions-lftag-tagvalues>
                   tagValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLFTagProperty :: LFTagProperty
mkLFTagProperty
  = LFTagProperty
      {haddock_workaround_ = (), tagKey = Prelude.Nothing,
       tagValues = Prelude.Nothing}
instance ToResourceProperties LFTagProperty where
  toResourceProperties LFTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.LFTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TagKey" Prelude.<$> tagKey,
                            (JSON..=) "TagValues" Prelude.<$> tagValues])}
instance JSON.ToJSON LFTagProperty where
  toJSON LFTagProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TagKey" Prelude.<$> tagKey,
               (JSON..=) "TagValues" Prelude.<$> tagValues]))
instance Property "TagKey" LFTagProperty where
  type PropertyType "TagKey" LFTagProperty = Value Prelude.Text
  set newValue LFTagProperty {..}
    = LFTagProperty {tagKey = Prelude.pure newValue, ..}
instance Property "TagValues" LFTagProperty where
  type PropertyType "TagValues" LFTagProperty = ValueList Prelude.Text
  set newValue LFTagProperty {..}
    = LFTagProperty {tagValues = Prelude.pure newValue, ..}