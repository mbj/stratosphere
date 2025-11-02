module Stratosphere.BCMDataExports.Export.DestinationConfigurationsProperty (
        module Exports, DestinationConfigurationsProperty(..),
        mkDestinationConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.S3DestinationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigurationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-destinationconfigurations.html>
    DestinationConfigurationsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-destinationconfigurations.html#cfn-bcmdataexports-export-destinationconfigurations-s3destination>
                                       s3Destination :: S3DestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigurationsProperty ::
  S3DestinationProperty -> DestinationConfigurationsProperty
mkDestinationConfigurationsProperty s3Destination
  = DestinationConfigurationsProperty
      {haddock_workaround_ = (), s3Destination = s3Destination}
instance ToResourceProperties DestinationConfigurationsProperty where
  toResourceProperties DestinationConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.DestinationConfigurations",
         supportsTags = Prelude.False,
         properties = ["S3Destination" JSON..= s3Destination]}
instance JSON.ToJSON DestinationConfigurationsProperty where
  toJSON DestinationConfigurationsProperty {..}
    = JSON.object ["S3Destination" JSON..= s3Destination]
instance Property "S3Destination" DestinationConfigurationsProperty where
  type PropertyType "S3Destination" DestinationConfigurationsProperty = S3DestinationProperty
  set newValue DestinationConfigurationsProperty {..}
    = DestinationConfigurationsProperty {s3Destination = newValue, ..}