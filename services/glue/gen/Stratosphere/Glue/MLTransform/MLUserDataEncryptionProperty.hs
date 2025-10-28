module Stratosphere.Glue.MLTransform.MLUserDataEncryptionProperty (
        MLUserDataEncryptionProperty(..), mkMLUserDataEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MLUserDataEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption-mluserdataencryption.html>
    MLUserDataEncryptionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption-mluserdataencryption.html#cfn-glue-mltransform-transformencryption-mluserdataencryption-kmskeyid>
                                  kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption-mluserdataencryption.html#cfn-glue-mltransform-transformencryption-mluserdataencryption-mluserdataencryptionmode>
                                  mLUserDataEncryptionMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMLUserDataEncryptionProperty ::
  Value Prelude.Text -> MLUserDataEncryptionProperty
mkMLUserDataEncryptionProperty mLUserDataEncryptionMode
  = MLUserDataEncryptionProperty
      {haddock_workaround_ = (),
       mLUserDataEncryptionMode = mLUserDataEncryptionMode,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties MLUserDataEncryptionProperty where
  toResourceProperties MLUserDataEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.MLUserDataEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MLUserDataEncryptionMode" JSON..= mLUserDataEncryptionMode]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON MLUserDataEncryptionProperty where
  toJSON MLUserDataEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MLUserDataEncryptionMode" JSON..= mLUserDataEncryptionMode]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" MLUserDataEncryptionProperty where
  type PropertyType "KmsKeyId" MLUserDataEncryptionProperty = Value Prelude.Text
  set newValue MLUserDataEncryptionProperty {..}
    = MLUserDataEncryptionProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MLUserDataEncryptionMode" MLUserDataEncryptionProperty where
  type PropertyType "MLUserDataEncryptionMode" MLUserDataEncryptionProperty = Value Prelude.Text
  set newValue MLUserDataEncryptionProperty {..}
    = MLUserDataEncryptionProperty
        {mLUserDataEncryptionMode = newValue, ..}