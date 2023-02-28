module Stratosphere.Transfer.Workflow.CopyStepDetailsProperty (
        module Exports, CopyStepDetailsProperty(..),
        mkCopyStepDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.S3FileLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CopyStepDetailsProperty
  = CopyStepDetailsProperty {destinationFileLocation :: (Prelude.Maybe S3FileLocationProperty),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             overwriteExisting :: (Prelude.Maybe (Value Prelude.Text)),
                             sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text))}
mkCopyStepDetailsProperty :: CopyStepDetailsProperty
mkCopyStepDetailsProperty
  = CopyStepDetailsProperty
      {destinationFileLocation = Prelude.Nothing, name = Prelude.Nothing,
       overwriteExisting = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing}
instance ToResourceProperties CopyStepDetailsProperty where
  toResourceProperties CopyStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.CopyStepDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationFileLocation"
                              Prelude.<$> destinationFileLocation,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
                            (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation])}
instance JSON.ToJSON CopyStepDetailsProperty where
  toJSON CopyStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationFileLocation"
                 Prelude.<$> destinationFileLocation,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation]))
instance Property "DestinationFileLocation" CopyStepDetailsProperty where
  type PropertyType "DestinationFileLocation" CopyStepDetailsProperty = S3FileLocationProperty
  set newValue CopyStepDetailsProperty {..}
    = CopyStepDetailsProperty
        {destinationFileLocation = Prelude.pure newValue, ..}
instance Property "Name" CopyStepDetailsProperty where
  type PropertyType "Name" CopyStepDetailsProperty = Value Prelude.Text
  set newValue CopyStepDetailsProperty {..}
    = CopyStepDetailsProperty {name = Prelude.pure newValue, ..}
instance Property "OverwriteExisting" CopyStepDetailsProperty where
  type PropertyType "OverwriteExisting" CopyStepDetailsProperty = Value Prelude.Text
  set newValue CopyStepDetailsProperty {..}
    = CopyStepDetailsProperty
        {overwriteExisting = Prelude.pure newValue, ..}
instance Property "SourceFileLocation" CopyStepDetailsProperty where
  type PropertyType "SourceFileLocation" CopyStepDetailsProperty = Value Prelude.Text
  set newValue CopyStepDetailsProperty {..}
    = CopyStepDetailsProperty
        {sourceFileLocation = Prelude.pure newValue, ..}