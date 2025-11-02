module Stratosphere.Glue.MLTransform.TransformEncryptionProperty (
        module Exports, TransformEncryptionProperty(..),
        mkTransformEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.MLUserDataEncryptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption.html>
    TransformEncryptionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption.html#cfn-glue-mltransform-transformencryption-mluserdataencryption>
                                 mLUserDataEncryption :: (Prelude.Maybe MLUserDataEncryptionProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformencryption.html#cfn-glue-mltransform-transformencryption-taskrunsecurityconfigurationname>
                                 taskRunSecurityConfigurationName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformEncryptionProperty :: TransformEncryptionProperty
mkTransformEncryptionProperty
  = TransformEncryptionProperty
      {haddock_workaround_ = (), mLUserDataEncryption = Prelude.Nothing,
       taskRunSecurityConfigurationName = Prelude.Nothing}
instance ToResourceProperties TransformEncryptionProperty where
  toResourceProperties TransformEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.TransformEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MLUserDataEncryption" Prelude.<$> mLUserDataEncryption,
                            (JSON..=) "TaskRunSecurityConfigurationName"
                              Prelude.<$> taskRunSecurityConfigurationName])}
instance JSON.ToJSON TransformEncryptionProperty where
  toJSON TransformEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MLUserDataEncryption" Prelude.<$> mLUserDataEncryption,
               (JSON..=) "TaskRunSecurityConfigurationName"
                 Prelude.<$> taskRunSecurityConfigurationName]))
instance Property "MLUserDataEncryption" TransformEncryptionProperty where
  type PropertyType "MLUserDataEncryption" TransformEncryptionProperty = MLUserDataEncryptionProperty
  set newValue TransformEncryptionProperty {..}
    = TransformEncryptionProperty
        {mLUserDataEncryption = Prelude.pure newValue, ..}
instance Property "TaskRunSecurityConfigurationName" TransformEncryptionProperty where
  type PropertyType "TaskRunSecurityConfigurationName" TransformEncryptionProperty = Value Prelude.Text
  set newValue TransformEncryptionProperty {..}
    = TransformEncryptionProperty
        {taskRunSecurityConfigurationName = Prelude.pure newValue, ..}