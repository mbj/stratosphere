module Stratosphere.Logs.Transformer.TypeConverterProperty (
        module Exports, TypeConverterProperty(..), mkTypeConverterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.TypeConverterEntryProperty as Exports
import Stratosphere.ResourceProperties
data TypeConverterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-typeconverter.html>
    TypeConverterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-typeconverter.html#cfn-logs-transformer-typeconverter-entries>
                           entries :: [TypeConverterEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTypeConverterProperty ::
  [TypeConverterEntryProperty] -> TypeConverterProperty
mkTypeConverterProperty entries
  = TypeConverterProperty
      {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties TypeConverterProperty where
  toResourceProperties TypeConverterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.TypeConverter",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON TypeConverterProperty where
  toJSON TypeConverterProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" TypeConverterProperty where
  type PropertyType "Entries" TypeConverterProperty = [TypeConverterEntryProperty]
  set newValue TypeConverterProperty {..}
    = TypeConverterProperty {entries = newValue, ..}