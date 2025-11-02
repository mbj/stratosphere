module Stratosphere.Batch.JobDefinition.EksEmptyDirProperty (
        EksEmptyDirProperty(..), mkEksEmptyDirProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksEmptyDirProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksemptydir.html>
    EksEmptyDirProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksemptydir.html#cfn-batch-jobdefinition-eksemptydir-medium>
                         medium :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksemptydir.html#cfn-batch-jobdefinition-eksemptydir-sizelimit>
                         sizeLimit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksEmptyDirProperty :: EksEmptyDirProperty
mkEksEmptyDirProperty
  = EksEmptyDirProperty
      {haddock_workaround_ = (), medium = Prelude.Nothing,
       sizeLimit = Prelude.Nothing}
instance ToResourceProperties EksEmptyDirProperty where
  toResourceProperties EksEmptyDirProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksEmptyDir",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Medium" Prelude.<$> medium,
                            (JSON..=) "SizeLimit" Prelude.<$> sizeLimit])}
instance JSON.ToJSON EksEmptyDirProperty where
  toJSON EksEmptyDirProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Medium" Prelude.<$> medium,
               (JSON..=) "SizeLimit" Prelude.<$> sizeLimit]))
instance Property "Medium" EksEmptyDirProperty where
  type PropertyType "Medium" EksEmptyDirProperty = Value Prelude.Text
  set newValue EksEmptyDirProperty {..}
    = EksEmptyDirProperty {medium = Prelude.pure newValue, ..}
instance Property "SizeLimit" EksEmptyDirProperty where
  type PropertyType "SizeLimit" EksEmptyDirProperty = Value Prelude.Text
  set newValue EksEmptyDirProperty {..}
    = EksEmptyDirProperty {sizeLimit = Prelude.pure newValue, ..}