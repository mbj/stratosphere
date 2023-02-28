module Stratosphere.EC2.NetworkInsightsAccessScope.ThroughResourcesStatementRequestProperty (
        module Exports, ThroughResourcesStatementRequestProperty(..),
        mkThroughResourcesStatementRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.ResourceStatementRequestProperty as Exports
import Stratosphere.ResourceProperties
data ThroughResourcesStatementRequestProperty
  = ThroughResourcesStatementRequestProperty {resourceStatement :: (Prelude.Maybe ResourceStatementRequestProperty)}
mkThroughResourcesStatementRequestProperty ::
  ThroughResourcesStatementRequestProperty
mkThroughResourcesStatementRequestProperty
  = ThroughResourcesStatementRequestProperty
      {resourceStatement = Prelude.Nothing}
instance ToResourceProperties ThroughResourcesStatementRequestProperty where
  toResourceProperties ThroughResourcesStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.ThroughResourcesStatementRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceStatement" Prelude.<$> resourceStatement])}
instance JSON.ToJSON ThroughResourcesStatementRequestProperty where
  toJSON ThroughResourcesStatementRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceStatement" Prelude.<$> resourceStatement]))
instance Property "ResourceStatement" ThroughResourcesStatementRequestProperty where
  type PropertyType "ResourceStatement" ThroughResourcesStatementRequestProperty = ResourceStatementRequestProperty
  set newValue ThroughResourcesStatementRequestProperty {}
    = ThroughResourcesStatementRequestProperty
        {resourceStatement = Prelude.pure newValue, ..}