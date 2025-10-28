module Stratosphere.LakeFormation.PrincipalPermissions.LFTagKeyResourceProperty (
        LFTagKeyResourceProperty(..), mkLFTagKeyResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LFTagKeyResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftagkeyresource.html>
    LFTagKeyResourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftagkeyresource.html#cfn-lakeformation-principalpermissions-lftagkeyresource-catalogid>
                              catalogId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftagkeyresource.html#cfn-lakeformation-principalpermissions-lftagkeyresource-tagkey>
                              tagKey :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-lftagkeyresource.html#cfn-lakeformation-principalpermissions-lftagkeyresource-tagvalues>
                              tagValues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLFTagKeyResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> LFTagKeyResourceProperty
mkLFTagKeyResourceProperty catalogId tagKey tagValues
  = LFTagKeyResourceProperty
      {haddock_workaround_ = (), catalogId = catalogId, tagKey = tagKey,
       tagValues = tagValues}
instance ToResourceProperties LFTagKeyResourceProperty where
  toResourceProperties LFTagKeyResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.LFTagKeyResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "TagKey" JSON..= tagKey, "TagValues" JSON..= tagValues]}
instance JSON.ToJSON LFTagKeyResourceProperty where
  toJSON LFTagKeyResourceProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "TagKey" JSON..= tagKey,
         "TagValues" JSON..= tagValues]
instance Property "CatalogId" LFTagKeyResourceProperty where
  type PropertyType "CatalogId" LFTagKeyResourceProperty = Value Prelude.Text
  set newValue LFTagKeyResourceProperty {..}
    = LFTagKeyResourceProperty {catalogId = newValue, ..}
instance Property "TagKey" LFTagKeyResourceProperty where
  type PropertyType "TagKey" LFTagKeyResourceProperty = Value Prelude.Text
  set newValue LFTagKeyResourceProperty {..}
    = LFTagKeyResourceProperty {tagKey = newValue, ..}
instance Property "TagValues" LFTagKeyResourceProperty where
  type PropertyType "TagValues" LFTagKeyResourceProperty = ValueList Prelude.Text
  set newValue LFTagKeyResourceProperty {..}
    = LFTagKeyResourceProperty {tagValues = newValue, ..}