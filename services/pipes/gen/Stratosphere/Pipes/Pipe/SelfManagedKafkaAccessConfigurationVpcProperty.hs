module Stratosphere.Pipes.Pipe.SelfManagedKafkaAccessConfigurationVpcProperty (
        SelfManagedKafkaAccessConfigurationVpcProperty(..),
        mkSelfManagedKafkaAccessConfigurationVpcProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedKafkaAccessConfigurationVpcProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationvpc.html>
    SelfManagedKafkaAccessConfigurationVpcProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationvpc.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationvpc-securitygroup>
                                                    securityGroup :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-selfmanagedkafkaaccessconfigurationvpc.html#cfn-pipes-pipe-selfmanagedkafkaaccessconfigurationvpc-subnets>
                                                    subnets :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedKafkaAccessConfigurationVpcProperty ::
  SelfManagedKafkaAccessConfigurationVpcProperty
mkSelfManagedKafkaAccessConfigurationVpcProperty
  = SelfManagedKafkaAccessConfigurationVpcProperty
      {haddock_workaround_ = (), securityGroup = Prelude.Nothing,
       subnets = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaAccessConfigurationVpcProperty where
  toResourceProperties
    SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SelfManagedKafkaAccessConfigurationVpc",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
                            (JSON..=) "Subnets" Prelude.<$> subnets])}
instance JSON.ToJSON SelfManagedKafkaAccessConfigurationVpcProperty where
  toJSON SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
               (JSON..=) "Subnets" Prelude.<$> subnets]))
instance Property "SecurityGroup" SelfManagedKafkaAccessConfigurationVpcProperty where
  type PropertyType "SecurityGroup" SelfManagedKafkaAccessConfigurationVpcProperty = ValueList Prelude.Text
  set newValue SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = SelfManagedKafkaAccessConfigurationVpcProperty
        {securityGroup = Prelude.pure newValue, ..}
instance Property "Subnets" SelfManagedKafkaAccessConfigurationVpcProperty where
  type PropertyType "Subnets" SelfManagedKafkaAccessConfigurationVpcProperty = ValueList Prelude.Text
  set newValue SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = SelfManagedKafkaAccessConfigurationVpcProperty
        {subnets = Prelude.pure newValue, ..}