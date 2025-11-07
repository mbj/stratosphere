module Stratosphere.EC2.Instance.EnaSrdSpecificationProperty (
        module Exports, EnaSrdSpecificationProperty(..),
        mkEnaSrdSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Instance.EnaSrdUdpSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnaSrdSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html>
    EnaSrdSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html#cfn-ec2-instance-enasrdspecification-enasrdenabled>
                                 enaSrdEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html#cfn-ec2-instance-enasrdspecification-enasrdudpspecification>
                                 enaSrdUdpSpecification :: (Prelude.Maybe EnaSrdUdpSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnaSrdSpecificationProperty :: EnaSrdSpecificationProperty
mkEnaSrdSpecificationProperty
  = EnaSrdSpecificationProperty
      {haddock_workaround_ = (), enaSrdEnabled = Prelude.Nothing,
       enaSrdUdpSpecification = Prelude.Nothing}
instance ToResourceProperties EnaSrdSpecificationProperty where
  toResourceProperties EnaSrdSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.EnaSrdSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnaSrdEnabled" Prelude.<$> enaSrdEnabled,
                            (JSON..=) "EnaSrdUdpSpecification"
                              Prelude.<$> enaSrdUdpSpecification])}
instance JSON.ToJSON EnaSrdSpecificationProperty where
  toJSON EnaSrdSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnaSrdEnabled" Prelude.<$> enaSrdEnabled,
               (JSON..=) "EnaSrdUdpSpecification"
                 Prelude.<$> enaSrdUdpSpecification]))
instance Property "EnaSrdEnabled" EnaSrdSpecificationProperty where
  type PropertyType "EnaSrdEnabled" EnaSrdSpecificationProperty = Value Prelude.Bool
  set newValue EnaSrdSpecificationProperty {..}
    = EnaSrdSpecificationProperty
        {enaSrdEnabled = Prelude.pure newValue, ..}
instance Property "EnaSrdUdpSpecification" EnaSrdSpecificationProperty where
  type PropertyType "EnaSrdUdpSpecification" EnaSrdSpecificationProperty = EnaSrdUdpSpecificationProperty
  set newValue EnaSrdSpecificationProperty {..}
    = EnaSrdSpecificationProperty
        {enaSrdUdpSpecification = Prelude.pure newValue, ..}