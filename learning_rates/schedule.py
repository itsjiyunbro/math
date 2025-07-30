import numpy as np
import matplotlib.pyplot as plt


## Step LR
def step_decay_schedule(initial_lr: float, decay_factor: float, step_size: int, max_epochs: int = 100) -> np.ndarray:
  """
  Generate a step size decay learning rate schedule.

  Args:
    initial_lr: The initial learning rate
    power: The power of polynomial
    max_epochs: The maximum number of epochs
  Return:
    An array of learning rates for each epoch.
  """

  epochs = np.arange(max_epochs)
  lr = initial_lr * (decay_factor ** np.floor((1+epochs) / step_size))
  return lr


## Staircase Exponential LR
def staircase_exp_decay_schedule(initial_lr: float, decay_rate: float, step_size: int, max_epochs: int = 100) -> np.ndarray:
  """
  Generate a staircase exponential decay learning rate schedule.

  Args:
    initial_lr: The initial learning rate
    decay_rate: The decay rate
    step_size: The step size
    max_epochs: The maximum number of epochs
  Return:
    An array of learning rates for each epoch.
  """

  epochs = np.arange(max_epochs)
  lr = initial_lr * np.exp(-decay_rate * np.floor((1 + epochs) / step_size))
  return lr


## Polynomial LR
def polynomial_decay_schedule(initial_lr: float, power: float, max_epochs: int= 100) -> np.ndarray:
  """
  Generate a polynomial decay learning rate schedule.

  Args:
    initial_lr: The initial learning rate
    power: The power of polynomial
    max_epochs: The maximum number of epochs
  Return:
    An array of learning rates for each epoch.
  """

  epochs = np.arange(max_epochs)
  lr = initial_lr * ( (1-(epochs / max_epochs)) ** power)
  return lr


## Cosine Annealing LR
def cosine_annealing_schedule(lr_min: float, lr_max: float, max_epochs: int = 100) -> np.ndarray:
  """
  Generate a cosine annealing learning rate schedule.

  Args:
    lr_min: The minimum learning rate
    lr_max: The maximum learning rate
    max_epochs: The maximum number of epochs
  Return:
    An array of learning rates for each epoch.
  """

  epochs = np.arange(max_epochs)
  lr = lr_min + 0.5 * (lr_max - lr_min) * ( 1 + np.cos(np.pi * epochs / max_epochs) )
  return lr


## Exponential LR
def exponential_decay_schedule(initial_lr:float, decay_rate: float, amx_epochs: int = 100) -> np.ndarray:
  """
  Generate an Exponential decay learning rate schedule.

  Args:
    initial_lr: The initial learning rate
    decay_rate: The decay rate
    max_epochs: The maximum number of epochs
  Return:
    An array of learning rates for each epoch.
  """

  epochs = np.arange(max_epochs)
  lr = initial_lr * np.exp(-decay_rate * epochs)
  return lr


# Define the learning rate schedules
schedules = {
    "Step Decay": step_decay_schedule(1.0, 0.5, 10),
    "Staircase Exp. Decay": staircase_exp_decay_schedule(1.0, 0.05, 10),
    "Polynomial Decay": polynomial_decay_schedule(1.0, 2),
    "Cosine Annealing Decay": cosine_annealing_schedule(0.01, 1.0),
    "Exponential Decay": exponential_decay_schedule(1.0, 0.05)
}

# Define a color palette
colors = ['b', 'g', 'r', 'c', 'm']

# Plot with defined colors
plt.figure(figsize=(10,6))
for color, (schedule_name, schedule) in zip(colors, schedules.items()):
  plt.plot(schedule, label=schedule_name, color=color)

plt.title('Learning Rate Schedulers', fontsize=20)
plt.ylabel('Learning Rate', fontsize=15)
plt.xlabel('Epoch', fontsize=15)
plt.grid(True, which='both', linestyle='--', linewidth=0.6)
plt.minorticks_on()
plt.legend(prop={'size': 12})
plt.show()
