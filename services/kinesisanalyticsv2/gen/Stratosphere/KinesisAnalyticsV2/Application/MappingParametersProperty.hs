module Stratosphere.KinesisAnalyticsV2.Application.MappingParametersProperty (
        module Exports, MappingParametersProperty(..),
        mkMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.CSVMappingParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.JSONMappingParametersProperty as Exports
import Stratosphere.ResourceProperties
data MappingParametersProperty
  = MappingParametersProperty {cSVMappingParameters :: (Prelude.Maybe CSVMappingParametersProperty),
                               jSONMappingParameters :: (Prelude.Maybe JSONMappingParametersProperty)}
mkMappingParametersProperty :: MappingParametersProperty
mkMappingParametersProperty
  = MappingParametersProperty
      {cSVMappingParameters = Prelude.Nothing,
       jSONMappingParameters = Prelude.Nothing}
instance ToResourceProperties MappingParametersProperty where
  toResourceProperties MappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.MappingParameters",
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