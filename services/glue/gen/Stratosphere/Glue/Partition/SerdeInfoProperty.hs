module Stratosphere.Glue.Partition.SerdeInfoProperty (
        SerdeInfoProperty(..), mkSerdeInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SerdeInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html>
    SerdeInfoProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-name>
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-parameters>
                       parameters :: (Prelude.Maybe JSON.Object),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-serializationlibrary>
                       serializationLibrary :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSerdeInfoProperty :: SerdeInfoProperty
mkSerdeInfoProperty
  = SerdeInfoProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       parameters = Prelude.Nothing,
       serializationLibrary = Prelude.Nothing}
instance ToResourceProperties SerdeInfoProperty where
  toResourceProperties SerdeInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.SerdeInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "SerializationLibrary"
                              Prelude.<$> serializationLibrary])}
instance JSON.ToJSON SerdeInfoProperty where
  toJSON SerdeInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "SerializationLibrary"
                 Prelude.<$> serializationLibrary]))
instance Property "Name" SerdeInfoProperty where
  type PropertyType "Name" SerdeInfoProperty = Value Prelude.Text
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty {name = Prelude.pure newValue, ..}
instance Property "Parameters" SerdeInfoProperty where
  type PropertyType "Parameters" SerdeInfoProperty = JSON.Object
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty {parameters = Prelude.pure newValue, ..}
instance Property "SerializationLibrary" SerdeInfoProperty where
  type PropertyType "SerializationLibrary" SerdeInfoProperty = Value Prelude.Text
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty
        {serializationLibrary = Prelude.pure newValue, ..}