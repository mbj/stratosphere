module Stratosphere.EMR.Cluster.ApplicationProperty (
        ApplicationProperty(..), mkApplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html>
    ApplicationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-additionalinfo>
                         additionalInfo :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-args>
                         args :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-name>
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-version>
                         version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationProperty :: ApplicationProperty
mkApplicationProperty
  = ApplicationProperty
      {haddock_workaround_ = (), additionalInfo = Prelude.Nothing,
       args = Prelude.Nothing, name = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties ApplicationProperty where
  toResourceProperties ApplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.Application",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
                            (JSON..=) "Args" Prelude.<$> args,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON ApplicationProperty where
  toJSON ApplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
               (JSON..=) "Args" Prelude.<$> args,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "AdditionalInfo" ApplicationProperty where
  type PropertyType "AdditionalInfo" ApplicationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ApplicationProperty {..}
    = ApplicationProperty {additionalInfo = Prelude.pure newValue, ..}
instance Property "Args" ApplicationProperty where
  type PropertyType "Args" ApplicationProperty = ValueList Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {args = Prelude.pure newValue, ..}
instance Property "Name" ApplicationProperty where
  type PropertyType "Name" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {name = Prelude.pure newValue, ..}
instance Property "Version" ApplicationProperty where
  type PropertyType "Version" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {version = Prelude.pure newValue, ..}