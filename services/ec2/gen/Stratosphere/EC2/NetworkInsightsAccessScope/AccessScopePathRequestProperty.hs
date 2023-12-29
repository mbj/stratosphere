module Stratosphere.EC2.NetworkInsightsAccessScope.AccessScopePathRequestProperty (
        module Exports, AccessScopePathRequestProperty(..),
        mkAccessScopePathRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.PathStatementRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.ThroughResourcesStatementRequestProperty as Exports
import Stratosphere.ResourceProperties
data AccessScopePathRequestProperty
  = AccessScopePathRequestProperty {destination :: (Prelude.Maybe PathStatementRequestProperty),
                                    source :: (Prelude.Maybe PathStatementRequestProperty),
                                    throughResources :: (Prelude.Maybe [ThroughResourcesStatementRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessScopePathRequestProperty :: AccessScopePathRequestProperty
mkAccessScopePathRequestProperty
  = AccessScopePathRequestProperty
      {destination = Prelude.Nothing, source = Prelude.Nothing,
       throughResources = Prelude.Nothing}
instance ToResourceProperties AccessScopePathRequestProperty where
  toResourceProperties AccessScopePathRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.AccessScopePathRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "ThroughResources" Prelude.<$> throughResources])}
instance JSON.ToJSON AccessScopePathRequestProperty where
  toJSON AccessScopePathRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "ThroughResources" Prelude.<$> throughResources]))
instance Property "Destination" AccessScopePathRequestProperty where
  type PropertyType "Destination" AccessScopePathRequestProperty = PathStatementRequestProperty
  set newValue AccessScopePathRequestProperty {..}
    = AccessScopePathRequestProperty
        {destination = Prelude.pure newValue, ..}
instance Property "Source" AccessScopePathRequestProperty where
  type PropertyType "Source" AccessScopePathRequestProperty = PathStatementRequestProperty
  set newValue AccessScopePathRequestProperty {..}
    = AccessScopePathRequestProperty
        {source = Prelude.pure newValue, ..}
instance Property "ThroughResources" AccessScopePathRequestProperty where
  type PropertyType "ThroughResources" AccessScopePathRequestProperty = [ThroughResourcesStatementRequestProperty]
  set newValue AccessScopePathRequestProperty {..}
    = AccessScopePathRequestProperty
        {throughResources = Prelude.pure newValue, ..}