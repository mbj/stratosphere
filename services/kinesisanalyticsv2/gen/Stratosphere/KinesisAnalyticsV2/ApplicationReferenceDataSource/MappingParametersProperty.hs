module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.MappingParametersProperty (
        module Exports, MappingParametersProperty(..),
        mkMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.CSVMappingParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.JSONMappingParametersProperty as Exports
import Stratosphere.ResourceProperties
data MappingParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html>
    MappingParametersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-csvmappingparameters>
                               cSVMappingParameters :: (Prelude.Maybe CSVMappingParametersProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-jsonmappingparameters>
                               jSONMappingParameters :: (Prelude.Maybe JSONMappingParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappingParametersProperty :: MappingParametersProperty
mkMappingParametersProperty
  = MappingParametersProperty
      {haddock_workaround_ = (), cSVMappingParameters = Prelude.Nothing,
       jSONMappingParameters = Prelude.Nothing}
instance ToResourceProperties MappingParametersProperty where
  toResourceProperties MappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.MappingParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CSVMappingParameters" Prelude.<$> cSVMappingParameters,
                            (JSON..=) "JSONMappingParameters"
                              Prelude.<$> jSONMappingParameters])}
instance JSON.ToJSON MappingParametersProperty where
  toJSON MappingParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CSVMappingParameters" Prelude.<$> cSVMappingParameters,
               (JSON..=) "JSONMappingParameters"
                 Prelude.<$> jSONMappingParameters]))
instance Property "CSVMappingParameters" MappingParametersProperty where
  type PropertyType "CSVMappingParameters" MappingParametersProperty = CSVMappingParametersProperty
  set newValue MappingParametersProperty {..}
    = MappingParametersProperty
        {cSVMappingParameters = Prelude.pure newValue, ..}
instance Property "JSONMappingParameters" MappingParametersProperty where
  type PropertyType "JSONMappingParameters" MappingParametersProperty = JSONMappingParametersProperty
  set newValue MappingParametersProperty {..}
    = MappingParametersProperty
        {jSONMappingParameters = Prelude.pure newValue, ..}