module Stratosphere.EC2.Instance.HibernationOptionsProperty (
        HibernationOptionsProperty(..), mkHibernationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HibernationOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html>
    HibernationOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html#cfn-ec2-instance-hibernationoptions-configured>
                                configured :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHibernationOptionsProperty :: HibernationOptionsProperty
mkHibernationOptionsProperty
  = HibernationOptionsProperty
      {haddock_workaround_ = (), configured = Prelude.Nothing}
instance ToResourceProperties HibernationOptionsProperty where
  toResourceProperties HibernationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.HibernationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configured" Prelude.<$> configured])}
instance JSON.ToJSON HibernationOptionsProperty where
  toJSON HibernationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configured" Prelude.<$> configured]))
instance Property "Configured" HibernationOptionsProperty where
  type PropertyType "Configured" HibernationOptionsProperty = Value Prelude.Bool
  set newValue HibernationOptionsProperty {..}
    = HibernationOptionsProperty
        {configured = Prelude.pure newValue, ..}