module Stratosphere.EC2.NetworkInsightsAnalysis.AdditionalDetailProperty (
        module Exports, AdditionalDetailProperty(..),
        mkAdditionalDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalDetailProperty
  = AdditionalDetailProperty {additionalDetailType :: (Prelude.Maybe (Value Prelude.Text)),
                              component :: (Prelude.Maybe AnalysisComponentProperty),
                              loadBalancers :: (Prelude.Maybe [AnalysisComponentProperty]),
                              serviceName :: (Prelude.Maybe (Value Prelude.Text))}
mkAdditionalDetailProperty :: AdditionalDetailProperty
mkAdditionalDetailProperty
  = AdditionalDetailProperty
      {additionalDetailType = Prelude.Nothing,
       component = Prelude.Nothing, loadBalancers = Prelude.Nothing,
       serviceName = Prelude.Nothing}
instance ToResourceProperties AdditionalDetailProperty where
  toResourceProperties AdditionalDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AdditionalDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalDetailType" Prelude.<$> additionalDetailType,
                            (JSON..=) "Component" Prelude.<$> component,
                            (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName])}
instance JSON.ToJSON AdditionalDetailProperty where
  toJSON AdditionalDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalDetailType" Prelude.<$> additionalDetailType,
               (JSON..=) "Component" Prelude.<$> component,
               (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
               (JSON..=) "ServiceName" Prelude.<$> serviceName]))
instance Property "AdditionalDetailType" AdditionalDetailProperty where
  type PropertyType "AdditionalDetailType" AdditionalDetailProperty = Value Prelude.Text
  set newValue AdditionalDetailProperty {..}
    = AdditionalDetailProperty
        {additionalDetailType = Prelude.pure newValue, ..}
instance Property "Component" AdditionalDetailProperty where
  type PropertyType "Component" AdditionalDetailProperty = AnalysisComponentProperty
  set newValue AdditionalDetailProperty {..}
    = AdditionalDetailProperty {component = Prelude.pure newValue, ..}
instance Property "LoadBalancers" AdditionalDetailProperty where
  type PropertyType "LoadBalancers" AdditionalDetailProperty = [AnalysisComponentProperty]
  set newValue AdditionalDetailProperty {..}
    = AdditionalDetailProperty
        {loadBalancers = Prelude.pure newValue, ..}
instance Property "ServiceName" AdditionalDetailProperty where
  type PropertyType "ServiceName" AdditionalDetailProperty = Value Prelude.Text
  set newValue AdditionalDetailProperty {..}
    = AdditionalDetailProperty
        {serviceName = Prelude.pure newValue, ..}