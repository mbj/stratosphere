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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-throughresourcesstatementrequest.html>
    ThroughResourcesStatementRequestProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-throughresourcesstatementrequest.html#cfn-ec2-networkinsightsaccessscope-throughresourcesstatementrequest-resourcestatement>
                                              resourceStatement :: (Prelude.Maybe ResourceStatementRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThroughResourcesStatementRequestProperty ::
  ThroughResourcesStatementRequestProperty
mkThroughResourcesStatementRequestProperty
  = ThroughResourcesStatementRequestProperty
      {haddock_workaround_ = (), resourceStatement = Prelude.Nothing}
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
  set newValue ThroughResourcesStatementRequestProperty {..}
    = ThroughResourcesStatementRequestProperty
        {resourceStatement = Prelude.pure newValue, ..}