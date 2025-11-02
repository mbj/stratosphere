module Stratosphere.EC2.NetworkInsightsAccessScope.ResourceStatementRequestProperty (
        ResourceStatementRequestProperty(..),
        mkResourceStatementRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceStatementRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-resourcestatementrequest.html>
    ResourceStatementRequestProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-resourcestatementrequest.html#cfn-ec2-networkinsightsaccessscope-resourcestatementrequest-resourcetypes>
                                      resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-resourcestatementrequest.html#cfn-ec2-networkinsightsaccessscope-resourcestatementrequest-resources>
                                      resources :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceStatementRequestProperty ::
  ResourceStatementRequestProperty
mkResourceStatementRequestProperty
  = ResourceStatementRequestProperty
      {haddock_workaround_ = (), resourceTypes = Prelude.Nothing,
       resources = Prelude.Nothing}
instance ToResourceProperties ResourceStatementRequestProperty where
  toResourceProperties ResourceStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.ResourceStatementRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
                            (JSON..=) "Resources" Prelude.<$> resources])}
instance JSON.ToJSON ResourceStatementRequestProperty where
  toJSON ResourceStatementRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes,
               (JSON..=) "Resources" Prelude.<$> resources]))
instance Property "ResourceTypes" ResourceStatementRequestProperty where
  type PropertyType "ResourceTypes" ResourceStatementRequestProperty = ValueList Prelude.Text
  set newValue ResourceStatementRequestProperty {..}
    = ResourceStatementRequestProperty
        {resourceTypes = Prelude.pure newValue, ..}
instance Property "Resources" ResourceStatementRequestProperty where
  type PropertyType "Resources" ResourceStatementRequestProperty = ValueList Prelude.Text
  set newValue ResourceStatementRequestProperty {..}
    = ResourceStatementRequestProperty
        {resources = Prelude.pure newValue, ..}