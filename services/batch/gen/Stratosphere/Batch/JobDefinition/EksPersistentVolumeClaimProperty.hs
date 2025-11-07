module Stratosphere.Batch.JobDefinition.EksPersistentVolumeClaimProperty (
        EksPersistentVolumeClaimProperty(..),
        mkEksPersistentVolumeClaimProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksPersistentVolumeClaimProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspersistentvolumeclaim.html>
    EksPersistentVolumeClaimProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspersistentvolumeclaim.html#cfn-batch-jobdefinition-ekspersistentvolumeclaim-claimname>
                                      claimName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspersistentvolumeclaim.html#cfn-batch-jobdefinition-ekspersistentvolumeclaim-readonly>
                                      readOnly :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksPersistentVolumeClaimProperty ::
  Value Prelude.Text -> EksPersistentVolumeClaimProperty
mkEksPersistentVolumeClaimProperty claimName
  = EksPersistentVolumeClaimProperty
      {haddock_workaround_ = (), claimName = claimName,
       readOnly = Prelude.Nothing}
instance ToResourceProperties EksPersistentVolumeClaimProperty where
  toResourceProperties EksPersistentVolumeClaimProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksPersistentVolumeClaim",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClaimName" JSON..= claimName]
                           (Prelude.catMaybes [(JSON..=) "ReadOnly" Prelude.<$> readOnly]))}
instance JSON.ToJSON EksPersistentVolumeClaimProperty where
  toJSON EksPersistentVolumeClaimProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClaimName" JSON..= claimName]
              (Prelude.catMaybes [(JSON..=) "ReadOnly" Prelude.<$> readOnly])))
instance Property "ClaimName" EksPersistentVolumeClaimProperty where
  type PropertyType "ClaimName" EksPersistentVolumeClaimProperty = Value Prelude.Text
  set newValue EksPersistentVolumeClaimProperty {..}
    = EksPersistentVolumeClaimProperty {claimName = newValue, ..}
instance Property "ReadOnly" EksPersistentVolumeClaimProperty where
  type PropertyType "ReadOnly" EksPersistentVolumeClaimProperty = Value Prelude.Bool
  set newValue EksPersistentVolumeClaimProperty {..}
    = EksPersistentVolumeClaimProperty
        {readOnly = Prelude.pure newValue, ..}