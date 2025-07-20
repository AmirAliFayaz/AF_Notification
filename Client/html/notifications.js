const container = document.getElementById('notifications-container');

const notificationTypes = {
    success: {
        icon: 'fas fa-check',
        title: 'Success'
    },
    error: {
        icon: 'fas fa-times',
        title: 'Error'
    },
    info: {
        icon: 'fas fa-info',
        title: 'Information'
    },
    debug: {
        icon: 'fas fa-bug',
        title: 'Debug'
    }
};

window.addEventListener('message', function(event) {
    if (event.data.type === 'notification') {
        showNotification(event.data.message, event.data.notifyType);
    }
});

function showNotification(message, type = 'info') {
    const notification = document.createElement('div');
    notification.className = `notification ${type}`;
    
    const icon = document.createElement('i');
    icon.className = notificationTypes[type].icon;
    
    const content = document.createElement('div');
    content.className = 'content';
    
    const title = document.createElement('div');
    title.className = 'title';
    title.textContent = notificationTypes[type].title;
    
    const messageText = document.createElement('div');
    messageText.className = 'message';
    messageText.textContent = message;
    
    const progress = document.createElement('div');
    progress.className = 'progress';
    
    const progressBar = document.createElement('div');
    progressBar.className = 'progress-bar';
    
    content.appendChild(title);
    content.appendChild(messageText);
    progress.appendChild(progressBar);
    
    notification.appendChild(icon);
    notification.appendChild(content);
    notification.appendChild(progress);
    
    container.appendChild(notification);
    
    setTimeout(() => {
        notification.classList.add('fade-out');
        setTimeout(() => {
            if (notification.parentNode === container) {
                container.removeChild(notification);
            }
        }, 300);
    }, 5000);
} 