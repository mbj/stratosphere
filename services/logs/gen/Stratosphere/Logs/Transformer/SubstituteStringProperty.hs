module Stratosphere.Logs.Transformer.SubstituteStringProperty (
        module Exports, SubstituteStringProperty(..),
        mkSubstituteStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.SubstituteStringEntryProperty as Exports
import Stratosphere.ResourceProperties
data SubstituteStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestring.html>
    SubstituteStringProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestring.html#cfn-logs-transformer-substitutestring-entries>
                              entries :: [SubstituteStringEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubstituteStringProperty ::
  [SubstituteStringEntryProperty] -> SubstituteStringProperty
mkSubstituteStringProperty entries
  = SubstituteStringProperty
      {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties SubstituteStringProperty where
  toResourceProperties SubstituteStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.SubstituteString",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON SubstituteStringProperty where
  toJSON SubstituteStringProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" SubstituteStringProperty where
  type PropertyType "Entries" SubstituteStringProperty = [SubstituteStringEntryProperty]
  set newValue SubstituteStringProperty {..}
    = SubstituteStringProperty {entries = newValue, ..}