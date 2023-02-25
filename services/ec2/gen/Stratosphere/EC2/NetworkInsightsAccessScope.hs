module Stratosphere.EC2.NetworkInsightsAccessScope (
        module Exports, NetworkInsightsAccessScope(..),
        mkNetworkInsightsAccessScope
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAccessScope.AccessScopePathRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data NetworkInsightsAccessScope
  = NetworkInsightsAccessScope {excludePaths :: (Prelude.Maybe [AccessScopePathRequestProperty]),
                                matchPaths :: (Prelude.Maybe [AccessScopePathRequestProperty]),
                                tags :: (Prelude.Maybe [Tag])}
mkNetworkInsightsAccessScope :: NetworkInsightsAccessScope
mkNetworkInsightsAccessScope
  = NetworkInsightsAccessScope
      {excludePaths = Prelude.Nothing, matchPaths = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties NetworkInsightsAccessScope where
  toResourceProperties NetworkInsightsAccessScope {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludePaths" Prelude.<$> excludePaths,
                            (JSON..=) "MatchPaths" Prelude.<$> matchPaths,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON NetworkInsightsAccessScope where
  toJSON NetworkInsightsAccessScope {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludePaths" Prelude.<$> excludePaths,
               (JSON..=) "MatchPaths" Prelude.<$> matchPaths,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ExcludePaths" NetworkInsightsAccessScope where
  type PropertyType "ExcludePaths" NetworkInsightsAccessScope = [AccessScopePathRequestProperty]
  set newValue NetworkInsightsAccessScope {..}
    = NetworkInsightsAccessScope
        {excludePaths = Prelude.pure newValue, ..}
instance Property "MatchPaths" NetworkInsightsAccessScope where
  type PropertyType "MatchPaths" NetworkInsightsAccessScope = [AccessScopePathRequestProperty]
  set newValue NetworkInsightsAccessScope {..}
    = NetworkInsightsAccessScope
        {matchPaths = Prelude.pure newValue, ..}
instance Property "Tags" NetworkInsightsAccessScope where
  type PropertyType "Tags" NetworkInsightsAccessScope = [Tag]
  set newValue NetworkInsightsAccessScope {..}
    = NetworkInsightsAccessScope {tags = Prelude.pure newValue, ..}